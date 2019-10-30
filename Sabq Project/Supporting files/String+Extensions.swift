//
//  String+Extensions.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/30/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import Foundation

extension String {
    func convetDate() -> Date? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy'-'MM'-'dd'T'HH':'mm':'ssZZZ"
        let date = dateFormatter.date(from: self)
        return date
    }
}
