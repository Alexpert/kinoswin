import SQLCodable

public struct DAO {
	public static let shared = try! DAO()

	private let database: SQLDatabase

	private let listUsersStatement: SQLStatement

	private init() throws {
		self.database = try SQLiteDatabase(filename: "db.sqlite")

		self.listUsersStatement = try database.makeStatement(query: "select * from users")
	}

	public func listUsers() throws -> [User] {
		var users = [User]()

		_ = try self.listUsersStatement.setup()

		while let user: User = try self.listUsersStatement.step() {
			users.append(user)
		}

		return users
	}
}

