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

	private init() throws {
		self.database = try SQLiteDatabase(filename: "db.sqlite")

		self.findUserStatement = try database.makeStatement(query: "select * from users where login = ?1")
	}

	public func findUser(forLogin login: String) throws -> User? {
		try self.findUserStatement.setup(with: login).step()
	}
}

