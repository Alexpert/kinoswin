
public struct Director: Codable {
	private enum CodingKeys: String, CodingKey {
		case firstname
		case lastname
		case nationality
		case birthDate = "birth_date"
	}

	public let firstname: String
	public let lastname: String
	public let nationality: String
	public let birthDate: Int
}

