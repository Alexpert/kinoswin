import Foundation

public struct Director: Codable {
	private enum CodingKeys: String, CodingKey {
		case firstname
		case lastname
		case nationality
		case birthDate = "birth_date"
	}

	struct PrimaryKey: Encodable {
		let firstname: String
		let lastname: String
	}

	public let firstname: String
	public let lastname: String
	public let nationality: String
	public let birthDate: Int

	public var country: String {
		Locale.current.localizedString(forRegionCode: self.nationality) ?? self.nationality
	}

	public var birthday: Date {
		Date(timeIntervalSince1970: TimeInterval(self.birthDate))
	}
}

