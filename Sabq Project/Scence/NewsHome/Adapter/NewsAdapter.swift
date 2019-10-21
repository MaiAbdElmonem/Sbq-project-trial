//
//  NewsAdapter.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/21/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import Foundation

class NewsAdapter: BaseListAdapterProtocal {
    var list: [Material]?
    
    var reloadData: (() -> Void)?
    
    var showEmptyState: ((Bool) -> Void)?
    
    func add(item: Material) {
        <#code#>
    }
    
    func add(items: [Material]) {
        <#code#>
    }
    
    func update(item: Material) {
        <#code#>
    }
    
    func count() -> Int {
        <#code#>
    }
    
    func isLastIndex(index: IndexPath) -> Bool {
        <#code#>
    }
    
    func clear(reload: Bool) {
        <#code#>
    }
    
   
    
   
    typealias DataType = Material
    
    
}
