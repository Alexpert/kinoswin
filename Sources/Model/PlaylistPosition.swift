
public struct PlaylistPosition: Codable {
	private enum CodingKeys: String, CodingKey {
		case playlistTitle = "playlist_title"
		case playlistOwnerLogin = "playlist_owner_login"
		case mediaUUID = "media_uuid"
		case position
	}

	public let playlistTitle: String
	public let playlistOwnerLogin: String
	public let mediaUUID: String
	public let position: Int
}
