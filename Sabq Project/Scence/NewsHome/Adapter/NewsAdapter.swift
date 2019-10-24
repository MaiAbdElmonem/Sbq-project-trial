//
//  NewsAdapter.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/21/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import Foundation
import UIKit

//Each enum case represents the data type that requires the different TableViewCell
enum  NewsItemType{
//    case material
    case videos
//    case aricles
}
//because we want to use our data within the same tableView, need to have the single DataItem, that will determine all properties. We can achieve this by using the protocol, that will provide computed properties to our items:
protocol NewsListItem {
    var type: NewsItemType { get }
//    var rowCount: Int { get }
}
//Now we are ready to create the ViewModelItem for each of our data types.
//Each item will conform to the protocol.

class NewsAdapter: NSObject, BaseListAdapterProtocal{
  
    typealias DataType = NewsListItem
     var list: [NewsListItem]?
    var slider = [SliderItems]()
    var reloadData: (() -> Void)?
    var showEmptyState: ((Bool) -> Void)?
    
    var homeTable:UITableView?
    func setTableView(newsTable : UITableView){
        self.homeTable = newsTable
    }
    
    func addSliders(sliders: [Material]) {
        if list == nil {
            list = []
        }
        
        if !sliders.isEmpty {
            let slidersItem = SliderItems(sliders: sliders)
            slider.append(slidersItem)
        }
        
//        if !materials.isEmpty {
//            for material in materials {
//                let materialsItem = MaterialItems(material: material)
//                list?.append(materialsItem)
//            }
//        }
        reloadData?()
    }
    
    func add(item: NewsListItem) {
//        list = item
    }
    
    func add(items: [NewsListItem]) {
//        if list == nil {
//            list = []
//        }
       list?.append(contentsOf: items)
        reloadData!()
    }
    
    func update(item: NewsListItem) {
        
    }
    func count() -> Int {
        return list?.count ?? 0
    }
    
    func isLastIndex(index: IndexPath) -> Bool {
        return index.row == count()
    }
    
    func clear(reload: Bool) {
        
    }
}
extension NewsAdapter: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: //showSliderarr
            return slider.count
        default: //rest of list
            return count()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let item = list![indexPath.section]
        
        switch indexPath.section {
        case 0: //slidertableSection
            if let cell = homeTable?.dequeueReusableCell(withIdentifier: "SliderTableViewCell", for: indexPath) as? SliderTableViewCell {
                cell.slideList = slider[indexPath.row].sliders
                return cell
            }
        default:
            switch item.type {
                
//            case .material:
//                if let item = item as? MaterialItems, let cell = homeTable?.dequeueReusableCell(withIdentifier: <#T##String#>, for: <#T##IndexPath#>)
            case .videos:
                let item = item as? VideoItems
                guard let cell = homeTable?.dequeueReusableCell(withIdentifier: "VideoTableCell") else { return UITableViewCell() }
                 return cell
            }
           
        }
         return UITableViewCell()
    }
    
}

//Create the first ViewModeItem for the slider cell.
class SliderItems {
     var rowCount: Int { return 1 }
    var sliders : [Material]
    init(sliders:[Material]) {
        self.sliders = sliders
    }
}

//class MaterialItems: NewsListItem {
//    var type: NewsItemType {
//        return .material
//    }
//    var material : Material
//    init(material:Material) {
//        self.material = material
//    }
//}

class VideoItems: NewsListItem {
    var type : NewsItemType {
        return .videos
    }
    var videos : [Material]
    init(videos:[Material]) {
        self.videos = videos
    }
}

//class ArticlesItems: NewsListItem {
//    var type : NewsItemType {
//        return .aricles
//    }
//    var articles : [Material]
//    init(articles:[Material]) {
//        self.articles = articles
//    }

    
    
    
    
    
    
  
    
   
    
   
    
    
    
    
   


    

