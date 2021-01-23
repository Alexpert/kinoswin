
public struct PlaylistPosition: Codable {
	private enum CodingKeys: String, CodingKey {
		case playlistTitle = "playlist_title"
		case playlistOwnerLogin = "playlist_owner_login"
		case mediumUUID = "medium_uuid"
		case position
	}

	public let playlistTitle: String
	public let playlistOwnerLogin: String
	public let mediumUUID: String
	public let position: Int
}
