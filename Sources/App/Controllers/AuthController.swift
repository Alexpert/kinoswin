import Vapor
import Model

extension User: SessionAuthenticatable {
	public var sessionID : String {
		self.login
	}
}

fileprivate struct UserCredentials: Content {
	let login: String
	let password: String
}

struct UserSessionAuthenticator: SessionAuthenticator {
	typealias User = Model.User

	private enum UserSessionAuthenticatorError: Error {
		case userNotFound
	}

	func authenticate(sessionID: String, for request: Request) -> EventLoopFuture<Void> {
		do {
			guard let user = try DAO.shared.findUser(forLogin: sessionID) else {
				throw UserSessionAuthenticatorError.userNotFound
			}

			request.auth.login(user)
		} catch {
			return request.eventLoop.makeFailedFuture(error)
		}

		return request.eventLoop.makeSucceededFuture(())
	}
}

struct AuthController: RouteCollection {
	func boot(routes: RoutesBuilder) throws {
		routes.get("login", use: form)
		routes.post("login", use: login)
		routes.post("logout", use: logout)
	}

	private func form(request: Request) throws -> EventLoopFuture<View> {
		return request.view.render("login")
	}

	private func login(request: Request) throws -> Response {
		let credentials = try request.content.decode(UserCredentials.self)

		do {
			if let user = try DAO.shared.findUser(forLogin: credentials.login),
				try request.password.verify(credentials.password, created: user.passwordHash) {
				request.session.authenticate(user)
			}
		} catch {
			request.logger.info("Failed password verification for user \(credentials.login)")
		}

		return request.redirect(to: "index")
	}

	private func logout(request: Request) throws -> Response {

		request.session.unauthenticate(User.self)

		request.auth.logout(User.self)

		return request.redirect(to: "login")
	}
}
