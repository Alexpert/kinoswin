
public struct Viewing: Codable {
	private enum CodingKeys: String, CodingKey {
		case userLogin = "user_login"
		case mediaUUID = "media_uuid"
		case date
	}

	public let userLogin: String
	public let mediaUUID: String
	public let date: Int
}
