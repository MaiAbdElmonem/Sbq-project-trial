//
//  Int+Extentions.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/30/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import Foundation

extension Int {
    func formatNumber() -> String {
        let formater = NumberFormatter()
        formater.locale = NSLocale.current
        guard let formatNum = formater.string(from: NSNumber(value: self)) else { return "" }
        return formatNum
    }
}
