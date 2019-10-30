//
//  ImageResponse.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/24/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import Foundation

struct ImageResponse: Decodable {
    
    let code: Int?
    let comics: [Comic]?
    let materials: [String]?
    
}
