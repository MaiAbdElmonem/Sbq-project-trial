//
//	RootClass.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct VideoResponse : Decodable {

	let code : Int?
	let comics : [Comic]?
	let materials : [String]?


	enum CodingKeys: String, CodingKey {
		case code = "code"
		case comics = "comics"
		case materials = "materials"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		code = try values.decodeIfPresent(Int.self, forKey: .code)
		comics = try values.decodeIfPresent([Comic].self, forKey: .comics)
		materials = try values.decodeIfPresent([String].self, forKey: .materials)
	}


}
