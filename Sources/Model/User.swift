
public struct User: Codable {
	private enum CodingKeys: String, CodingKey {
		case login
		case passwordHash = "password_hash"
		case parent
	}

	public let login: String
	public let passwordHash: String
	public let parent: String
}
