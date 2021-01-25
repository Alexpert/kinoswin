import Leaf
import Vapor

public func configure(_ app: Application) throws {
	app.passwords.use(.bcrypt)

	app.middleware.use(FileMiddleware(publicDirectory: app.directory.publicDirectory))
	app.middleware.use(RedirectErrorMiddleware())
	app.middleware.use(app.sessions.middleware)

	app.sessions.use(.memory)

	app.views.use(.leaf)

	try routes(app)
}
