//
//  Videos.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/24/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import Foundation

struct Videos: Decodable {
    let vid: String?
    let caption: String?
    
    enum CodingKeys: String, CodingKey {
        case vid
        case caption 
    }
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        vid = try values.decodeIfPresent(String.self, forKey: .vid)
        caption = try values.decodeIfPresent(String.self, forKey: .caption)
    }
}
