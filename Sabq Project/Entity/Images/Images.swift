//
//  Images.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/24/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import Foundation

struct Images : Codable {
    
    let url : String?
    let caption : String?
    
    
    enum CodingKeys: String, CodingKey {
        case url = "url"
        case caption = "caption"
    }
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        url = try values.decodeIfPresent(String.self, forKey: .url)
        caption = try values.decodeIfPresent(String.self, forKey: .caption)
    }
    
    
}
