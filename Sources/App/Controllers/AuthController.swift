import Vapor

struct AuthController: RouteCollection {
	func boot(routes: RoutesBuilder) throws {
		routes.get("login", use: form)
		// routes.post("login", use: login)
		// routes.post("logout", use: logout)
	}

	private func form(request: Request) throws -> some ResponseEncodable{
		return request.view.render("login")
	}

	// private func login(request: Request) throws -> EventLoopFuture<Response> {
	// 	let credentials = try request.content.decode(UserCredentials.self)

	// 	return User.find(credentials.login, on: request.db).map { user in
	// 		do {
	// 			if let user = user, try request.password.verify(credentials.password, created: user.password) {
	// 				request.session.authenticate(user)
	// 			}
	// 		} catch {
	// 			request.logger.info("Failed password verification for user \(credentials.login)")
	// 		}

	// 		return request.redirect(to: "index")
	// 	}
	// }

	// private func logout(request: Request) throws -> Response {

	// 	request.session.unauthenticate(User.self)

	// 	request.auth.logout(User.self)

	// 	return request.redirect(to: "login")
	// }
}