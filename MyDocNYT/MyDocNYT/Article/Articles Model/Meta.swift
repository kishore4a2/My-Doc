

import Foundation
struct Meta : Codable {
	let hits : Int?
	let offset : Int?
	let time : Int?

	enum CodingKeys: String, CodingKey {

		case hits = "hits"
		case offset = "offset"
		case time = "time"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		hits = try values.decodeIfPresent(Int.self, forKey: .hits)
		offset = try values.decodeIfPresent(Int.self, forKey: .offset)
		time = try values.decodeIfPresent(Int.self, forKey: .time)
	}

}
