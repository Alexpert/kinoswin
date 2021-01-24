import Vapor

struct MainController: RouteCollection {
	func boot(routes: RoutesBuilder) throws {
		routes.get("index", use: index)

		routes.get(use: indexRedirection)
	}

	private func index(request: Request) throws -> EventLoopFuture<View> {
		request.view.render("index")
	}

	private func indexRedirection(request: Request) throws -> Response {
		request.redirect(to: "index")
	}
}

