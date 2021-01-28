import SQLiteCodable
import SQLCodable
import Foundation

public final class DAO : SQLDataAccessObject {
	public static let shared = DAO()

	public let database: SQLDatabase

	private init() {
		do {
			self.database = try SQLiteDatabase(filename: "db.sqlite")
		} catch {
			fatalError("Unable to create DAO: \(error)")
		}
	}

	public func findUser(forLogin login: String) throws -> User? {
		try self.query("select * from users where login = ?1", with: login).next()
	}

	public func findDirector(firstname: String, lastname: String) throws -> Director? {
		try self.query("select * from directors where firstname = ?1 and lastname = ?1", with: firstname, lastname).next()
	}

	public func findMedia(forUUID uuid: UUID) throws -> Media? {
		try self.query("select * from medias where uuid = ?1", with: uuid).next()
	}
}

