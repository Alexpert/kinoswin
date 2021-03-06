import Vapor

final class RedirectErrorMiddleware: Middleware {
	func respond(to request: Request, chainingTo next: Responder) -> EventLoopFuture<Response> {
		next.respond(to: request).flatMapErrorThrowing { error in
			let headers: HTTPHeaders
			let status: HTTPResponseStatus
			let reason: String

			switch error {
			case let abort as AbortError:
				reason = abort.reason
				status = abort.status
				headers = abort.headers
			default:
				reason = request.application.environment.isRelease
					? "Something went wrong."
					: error.localizedDescription
				status = .internalServerError
				headers = [:]
			}

			switch status {
			case .unauthorized:
				return request.redirect(to: "login")
			default:
				let response = Response(status: status, headers: headers)

				request.logger.report(error: error)

				response.body = .init(string: "Error: \(error): \(reason)")
				response.headers.replaceOrAdd(name: .contentType, value: "text/plain; charset=utf-8")

				return response
			}
		}
	}
}

