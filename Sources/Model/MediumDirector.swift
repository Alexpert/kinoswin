
public struct MediumDirector: Codable {
	private enum CodingKeys: String, CodingKey {
		case mediumUUID = "medium_uuid"
		case directorFirstname = "director_firstname"
		case directorLastname = "director_lastname"
	}

	public let mediumUUID: String
	public let directorFirstname: String
	public let directorLastname: String
}
