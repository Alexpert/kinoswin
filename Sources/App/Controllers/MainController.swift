import Vapor
import Model

struct MainController: RouteCollection {
	func boot(routes: RoutesBuilder) throws {
		routes.get("index", use: index)
		routes.get("director", use: director)
		routes.get("movie", use: movie)
		routes.get("profile", use: profile)

		routes.get(use: indexRedirection)
	}

	private func index(request: Request) throws -> EventLoopFuture<View> {
		request.view.render("index")
	}

	private func director(request: Request) throws -> EventLoopFuture<View> {
		request.view.render("director")
	}

	private func movie(request: Request) throws -> EventLoopFuture<View> {
		request.view.render("movie")
	}

	private func profile(request: Request) throws -> EventLoopFuture<View> {
		request.view.render("profile")
	}

	private func indexRedirection(request: Request) throws -> Response {
		request.redirect(to: "index")
	}
}

