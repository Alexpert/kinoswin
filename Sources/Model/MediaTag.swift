
public struct MediumTag: Codable {
	private enum CodingKeys: String, CodingKey {
		case mediaUUID = "media_uuid"
		case tagValue = "tag_value"
	}

	public let mediaUUID: String
	public let tagValue: String
}
