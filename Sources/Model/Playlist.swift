
public struct Playlist: Codable {
	private enum CodingKeys: String, CodingKey {
		case title
		case ownerLogin = "owner_login"
		case isPrivate = "is_private"
	}

	public let title: String
	public let ownerLogin: String
	public let isPrivate: Bool
}

