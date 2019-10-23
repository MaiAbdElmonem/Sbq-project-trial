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
//    func getNewsSlider(slider: [Material], materials: [Material]) {
//        adapter.addSliders(sliders: slider)
//    }
//    

    @IBOutlet weak var newsTableView: UITableView!
    var adapter = NewsAdapter()
    override func viewDidLoad() {
        super.viewDidLoad()
        newsTableView.delegate = self
        newsTableView.dataSource = adapter
        adapter.setTableView(newsTable: newsTableView)
        adapter.reloadData = reloadTableData
        presenter.loadNewsSliders()
        setupComponent()
    }
    
    func setupComponent() {
//        newsTableView.estimatedRowHeight = 50
        let sliderNib = UINib(nibName: "SliderTableViewCell", bundle: Bundle.main)
            newsTableView.register(sliderNib, forCellReuseIdentifier: "SliderTableViewCell")
    }
//
    func reloadTableData(){
        newsTableView.separatorStyle = .singleLine
        newsTableView.reloadData()
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
        if indexPath.section == 0 {
            return 510
        }
        return CGFloat(integerLiteral: 517)
    }
}
