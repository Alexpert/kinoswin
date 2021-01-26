import Foundation
import SQLCodable

public struct DAO {
	public static let shared = { () -> DAO in
		do {
			return try DAO()
		} catch let sqliteError as SQLiteError {
			fatalError("SQLiteError on creating DAO: \(sqliteError.localizedDescription)")
		} catch {
			fatalError("Unable to create DAO: \(error)")
		}
	}()

	private let database: SQLDatabase

	private let findUserStatement: SQLStatement
	private let findDirectorStatement: SQLStatement
	private let findMediaStatement: SQLStatement

	private init() throws {
		self.database = try SQLiteDatabase(filename: "db.sqlite")

		self.findUserStatement = try database.makeStatement(query: "select * from users where login = ?1")
		self.findDirectorStatement = try database.makeStatement(query: "select * from directors where firstname = :firstname and lastname = :lastname")
		self.findMediaStatement = try database.makeStatement(query: "select * from medias where uuid = ?1")
	}

	public func findUser(forLogin login: String) throws -> User? {
		try self.findUserStatement.setup(with: login).step()
	}

	public func findDirector(firstname: String, lastname: String) throws -> Director? {
		try self.findDirectorStatement.setup(with: Director.PrimaryKey(firstname: firstname, lastname: lastname)).step()
	}

	public func findMedia(forUUID uuid: UUID) throws -> Media? {
		try self.findMediaStatement.setup(with: uuid).step()
	}
}

