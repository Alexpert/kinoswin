import Foundation
import Vapor
import Model

struct MainController: RouteCollection {
	func boot(routes: RoutesBuilder) throws {
		routes.get("index", use: index)
		routes.get("profile", use: profile)
		routes.get("movie", ":uuid", use: movie)
		routes.get("director", ":lastname", ":firstname", use: director)

		routes.get(use: indexRedirection)
	}

	private struct IndexViewContext: Encodable {
		private let login: String

		init(forRequest request: Request) throws {
			self.login = try request.auth.require(User.self).login
		}
	}

	private func index(request: Request) throws -> EventLoopFuture<View> {
		try request.view.render("index", IndexViewContext(forRequest: request))
	}

	private struct ProfileViewContext: Encodable {
		private let login: String

		init(forRequest request: Request) throws {
			self.login = try request.auth.require(User.self).login
		}
	}

	private func profile(request: Request) throws -> EventLoopFuture<View> {
		try request.view.render("profile", ProfileViewContext(forRequest: request))
	}

	private struct MovieViewContext: Encodable {
		private let login: String
		private let title: String
		private let releaseYear: Int
		private let synopsis: String?

		init(forRequest request: Request) throws {
			guard let uuid = request.parameters.get("uuid", as: UUID.self),
				let media = try DAO.shared.findMedia(forUUID: uuid) else {
				throw Abort(.badRequest)
			}

			self.login = try request.auth.require(User.self).login
			self.title = media.title
			self.releaseYear = media.releaseYear
			self.synopsis = media.synopsis
		}
	}

	private func movie(request: Request) throws -> EventLoopFuture<View> {
		try request.view.render("movie", MovieViewContext(forRequest: request))
	}

	private struct DirectorViewContext: Encodable {
		private let login: String
		private let firstname: String
		private let lastname: String
		private let country: String
		private let birthday: Date

		init(forRequest request: Request) throws {
			guard let lastname = request.parameters.get("lastname", as: String.self),
				let firstname = request.parameters.get("firstname", as: String.self),
				let director = try DAO.shared.findDirector(firstname: firstname, lastname: lastname) else {
				throw Abort(.badRequest)
			}

			self.login = try request.auth.require(User.self).login
			self.firstname = director.firstname
			self.lastname = director.lastname
			self.country = director.country
			self.birthday = director.birthday
		}
	}

	private func director(request: Request) throws -> EventLoopFuture<View> {
		try request.view.render("director", DirectorViewContext(forRequest: request))
	}

	private func indexRedirection(request: Request) throws -> Response {
		request.redirect(to: "index")
	}
}

