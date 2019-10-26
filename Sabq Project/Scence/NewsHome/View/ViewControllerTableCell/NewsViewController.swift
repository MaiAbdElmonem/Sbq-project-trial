//
//  NewsViewController.swift
//  Sabq Project
//
//  Created by mai ahmed on 10/18/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class NewsViewController: BaseViewController< NewsPresenter > , NewsViewProtocal{
   
//    var results : RootClass?

    @IBOutlet weak var newsTableView: UITableView!
    var adapter = NewsAdapter()
    override func viewDidLoad() {
        super.viewDidLoad()
        newsTableView.delegate = self
        newsTableView.dataSource = adapter
        adapter.setTableView(newsTable: newsTableView)
        setupComponent()
        presenter.loadNewsSliders()
        adapter.reloadData = newsTableView.reloadData
    }
    
    func setupComponent() {
//        newsTableView.estimatedRowHeight = 120.0
//        newsTableView.rowHeight = UITableView.automaticDimension
        
        let materialNib = UINib(nibName: "MaterialTableViewCell", bundle: nil)
        newsTableView.register(materialNib, forCellReuseIdentifier: "MaterialTableViewCell")
        
        let sliderNib = UINib(nibName: "SliderTableViewCell", bundle: nil)
        newsTableView.register(sliderNib, forCellReuseIdentifier: "SliderTableViewCell")
        
        let videoNib = UINib(nibName: "VideoTableViewCell", bundle: nil)
        newsTableView.register(videoNib, forCellReuseIdentifier: "VideoTableViewCell")
        
        let imageNib = UINib(nibName: "ImageTableViewCell", bundle: nil)
        newsTableView.register(imageNib, forCellReuseIdentifier: "ImageTableViewCell")
        
        let articleNib = UINib(nibName: "ArticleTableViewCell", bundle: nil)
        newsTableView.register(articleNib, forCellReuseIdentifier: "ArticleTableViewCell")


    }

    
    func getNewsSliderList(sliderArr: [Material], materialsArr: [Material]) {
       adapter.addSlidersandMaterial(sliders: sliderArr, materials: materialsArr)
        newsTableView.reloadData()
    }
    
    func getNewsVideosList(videoArr: [Comic]) {
       adapter.addVideos(items: videoArr)
        presenter.loadNewsVideos()
    }
    
    func getNewsImagesList(ImagesArr: [Comic]) {
        adapter.addImages(items: ImagesArr)
      presenter.loadNewsImages()
    }
    
    func getNewsArticlesList(articlesArr: [Material]) {
        adapter.addArticles(items: articlesArr)
        presenter.loadNewsArticles()
        
    }
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return 2
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        if section == 0 {
//            if((results?.slider?.count) != nil)  {
//              return 1
//            }
//
//        }else{
//            if let cellNum = results?.materials?.count {
//                return cellNum
//            }
//        }
//       return 0
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////        if indexPath.section == 0 {
////            let typeACell = newsTableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for: indexPath) as! NewsTableViewCell
////            if let sliderArr = results?.slider {
////                typeACell
////            }
//            return typeACell
//        }
    
}
extension NewsViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0:
            return CGFloat(integerLiteral: 300)
        default:
            switch indexPath.row{
            case 5:
                return CGFloat(integerLiteral: 380)
            case 11:
                return CGFloat(integerLiteral: 350)
            case 17:
                return CGFloat(integerLiteral: 380)
            default:
                return CGFloat(integerLiteral: 120)
            }
        }
    }
}
