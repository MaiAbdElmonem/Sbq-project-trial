//
//	RootClass.swift
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct RootClass : Codable {

	let code : Int?
	let materials : [Material]?
	let slider : [Material]?


	enum CodingKeys: String, CodingKey {
		case code = "code"
		case materials = "materials"
		case slider = "slider"
	}
	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		code = try values.decodeIfPresent(Int.self, forKey: .code)
		materials = try values.decodeIfPresent([Material].self, forKey: .materials)
		slider = try values.decodeIfPresent([Material].self, forKey: .slider)
	}


}