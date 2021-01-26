import Foundation

public struct Media: Codable {
	private enum CodingKeys: String, CodingKey {
		case uuid
		case title
		case releaseDate = "release_date"
		case uploadDate = "upload_date"
		case synopsis
	}

	public let uuid: UUID
	public let title: String
	public let releaseDate: Int
	public let uploadDate: Int
	public let synopsis: String?

	public var releaseYear: Int {
		Calendar.current.component(.year, from: Date(timeIntervalSince1970: TimeInterval(self.releaseDate)))
	}
}

