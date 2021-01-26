
public struct MediumDirector: Codable {
	private enum CodingKeys: String, CodingKey {
		case mediaUUID = "media_uuid"
		case directorFirstname = "director_firstname"
		case directorLastname = "director_lastname"
	}

	public let mediaUUID: String
	public let directorFirstname: String
	public let directorLastname: String
}
