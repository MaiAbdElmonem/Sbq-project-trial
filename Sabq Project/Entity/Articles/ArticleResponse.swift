//
//  ArticleResponse.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/24/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import Foundation

struct ArticleResponse : Decodable {
    
    let code : Int?
    let materials : [Material]?
    
    
    enum CodingKeys: String, CodingKey {
        case code = "code"
        case materials = "materials"
    }
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        code = try values.decodeIfPresent(Int.self, forKey: .code)
        materials = try values.decodeIfPresent([Material].self, forKey: .materials)
    }
    
    
}
