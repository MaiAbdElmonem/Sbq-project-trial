//
//  ArticleResponse.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/24/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import Foundation

struct ArticleResponse: Decodable {
    
    let code: Int?
    let materials: [Material]?
    
}
