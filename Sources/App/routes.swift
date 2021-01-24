import Vapor
import Model

func routes(_ app: Application) throws {
	try app.register(collection: AuthController())

	let protected = app.routes.grouped(
		UserSessionAuthenticator(),
		User.guardMiddleware()
	)

	try protected.register(collection: MainController())
}
