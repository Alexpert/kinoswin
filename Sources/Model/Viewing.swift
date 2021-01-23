
public struct Viewing: Codable {
	private enum CodingKeys: String, CodingKey {
		case userLogin = "user_login"
		case mediumUUID = "medium_uuid"
		case date
	}

	public let userLogin: String
	public let mediumUUID: String
	public let date: Int
}
