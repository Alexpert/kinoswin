import SQLCodable

public struct DAO {
	public static let shared = try! DAO()

	private let database: SQLDatabase

	private let findUserStatement: SQLStatement

	private init() throws {
		self.database = try SQLiteDatabase(filename: "db.sqlite")

		self.findUserStatement = try database.makeStatement(query: "select * from users where login = ?1")
	}

	public func findUser(byLogin login: String) throws -> User? {
		try self.findUserStatement.setup(with: login).step()
	}
}

