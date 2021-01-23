
public struct PlaylistTag: Codable {
	private enum CodingKeys: String, CodingKey {
		case playlistTitle = "playlist_title"
		case playlistOwnerLogin = "playlist_owner_login"
		case tagValue = "tag_value"
	}

	public let playlistTitle: String
	public let playlistOwnerLogin: String
	public let tagValue: String
}
