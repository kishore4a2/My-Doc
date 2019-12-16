
import Foundation
struct Response : Codable {
	let docs : [Docs]?
	let meta : Meta?

	enum CodingKeys: String, CodingKey {

		case docs = "docs"
		case meta = "meta"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		docs = try values.decodeIfPresent([Docs].self, forKey: .docs)
		meta = try values.decodeIfPresent(Meta.self, forKey: .meta)
	}

}
