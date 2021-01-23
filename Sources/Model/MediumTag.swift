
public struct MediumTag: Codable {
	private enum CodingKeys: String, CodingKey {
		case mediumUUID = "medium_uuid"
		case tagValue = "tag_value"
	}

	public let mediumUUID: String
	public let tagValue: String
}
