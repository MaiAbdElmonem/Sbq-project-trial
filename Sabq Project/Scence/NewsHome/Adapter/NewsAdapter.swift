//
//  NewsAdapter.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/21/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import Foundation
import UIKit
import SkeletonView

//Each enum case represents the data type that requires the different TableViewCell
enum  NewsItemType {
    case material
    case images
    case videos
    case aricles
}
//because we want to use our data within the same tableView, need to have the single DataItem, that will determine all properties. We can achieve this by using the protocol, that will provide computed properties to our items:
protocol NewsListItem {
    var type: NewsItemType { get }
}
//Now we are ready to create the ViewModelItem for each of our data types.
//Each item will conform to the protocol.

class NewsAdapter: NSObject, BaseListAdapterProtocal {
  
    typealias DataType = NewsListItem
    var list: [NewsListItem]?
    var slider: [Material]?
    
    var reloadData: (() -> Void)?
    var showEmptyState: ((Bool) -> Void)?
    
    var homeTable: UITableView?
    func setTableView(newsTable: UITableView) {
        self.homeTable = newsTable
    }
    
    func addSlidersandMaterial(sliders: [Material], materials: [Material]) {
      let sliderarr = SliderItems(sliders: sliders)
        slider = sliderarr.sliders
       
        if list == nil {
            list = []
        }
        
        for material in materials {
            let materialsItems = MaterialItems(material: material)
            list?.append(materialsItems)
     
        }
        reloadData?()
    }
    
    func addVideos(items: [Comic]) {
   
    let videoitems = VideoItems(videos: items)
    list?.insert(videoitems, at: 5)
    
    reloadData?()
    }

    func addImages(items: [Comic]) {
        
            let imagesitems = ImagesItems(images: items)
            list?.insert(imagesitems, at: 11)
        
        reloadData?()
    }

    func addArticles(items: [Material]) {
        
            let articlesitems = ArticlesItems(articles: items)
            list?.insert(articlesitems, at: 17)
        
        reloadData?()
    }
    
    func add(item: NewsListItem) {
//        list = item
    }
    
    func add(items: [NewsListItem]) {

       list?.append(contentsOf: items)
        reloadData?()
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
            return 1
        default: //rest of list of second secetion
            return count()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let item = list?[indexPath.row] else { return UITableViewCell() }
        
        switch indexPath.section {
        case 0: //slidertableSection
            if let cell = tableView.dequeueReusableCell(withIdentifier: "SliderTableViewCell", for: indexPath)
                as? SliderTableViewCell {
  //             cell.configureCell(slider: slider)
            cell.slideList = slider
            return cell
            }
        default:
            switch  item.type {
            case .material:
                if let item = item as? MaterialItems, let cell = tableView.dequeueReusableCell(
                    withIdentifier: "MaterialTableViewCell", for: indexPath)
                    as? MaterialTableViewCell {
//                    let materialIndex = list![indexPath.row] as! MaterialItems
                    cell.config(materialObj: item.material)
                    return cell
                }
                
            case .videos:
                if let item = item as? VideoItems, let cell = tableView.dequeueReusableCell(
                    withIdentifier: "VideoTableViewCell", for: indexPath)
                    as? VideoTableViewCell {
//                    let videoindex = list![indexPath.row] as! VideoItems
                cell.configureCell(videos: item.videos)
                 return cell
                }
            case .images:
                if let item = item as? ImagesItems, let cell = tableView.dequeueReusableCell(
                    withIdentifier: "ImageTableViewCell", for: indexPath)
                    as? ImageTableViewCell {
//                     let imageindex = list![indexPath.row] as! ImagesItems
                cell.configureCell(images: item.images)
                return cell
                }
                
            case .aricles:
                if let item = item as? ArticlesItems, let cell = tableView.dequeueReusableCell(
                    withIdentifier: "ArticleTableViewCell", for: indexPath)
                    as? ArticleTableViewCell {
//                     let articleindex = list![indexPath.row] as! ArticlesItems
                cell.configureCell(articles: item.articles)
                return cell
                }
            }
           
        }
        return UITableViewCell()
    }
    
}

//Create the first ViewModeItem for the slider cell.
class SliderItems {
    var sliders: [Material]
    init(sliders: [Material]) {
        self.sliders = sliders
    }
}

class MaterialItems: NewsListItem {
    var type: NewsItemType = .material
    
    var material: Material
    init(material: Material) {
        self.material = material
    }
}

class VideoItems: NewsListItem {
    var type: NewsItemType {
        return .videos
    }
    var videos: [Comic]
    init(videos: [Comic]) {
        self.videos = videos
    }
}

class ImagesItems: NewsListItem {
    var type: NewsItemType {
        return .images
    }
    var images: [Comic]
    init(images: [Comic]) {
        self.images = images
    }
}

class ArticlesItems: NewsListItem {
    var type: NewsItemType {
        return .aricles
    }
    var articles: [Material]
    init(articles: [Material]) {
        self.articles = articles
    }
}

extension NewsAdapter: SkeletonTableViewDataSource {
    func numSections(in collectionSkeletonView: UITableView) -> Int {
        return 2
    }
    func collectionSkeletonView(_ skeletonView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
           return 1
        default:
           return 2
        }
    }
    
    func collectionSkeletonView(_ skeletonView: UITableView, cellIdentifierForRowAt indexPath: IndexPath)
        -> ReusableCellIdentifier {
        switch indexPath.section {
        case 0:
            return "SliderTableViewCell"
        default:
            return "MaterialTableViewCell"
        }
    }
}
