//
//  NewsViewController.swift
//  Sabq Project
//
//  Created by mai ahmed on 10/18/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class NewsViewController: BaseViewController< NewsPresenter > , NewsViewProtocal, UITableViewDelegate, UITableViewDataSource{
    var adapter = NewsAdapter()
    var results : RootClass?
//    func getNewsSlider(slider: [Material], materials: [Material]) {
//        adapter.add(item: <#T##[Material]#>, at: <#T##Int#>)
//    }
    

    @IBOutlet weak var newsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.newsTableView.delegate = self
        self.newsTableView.dataSource = self
        setupComponent()
    }
    
    func setupComponent() {
        newsTableView.estimatedRowHeight = 50
        newsTableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: "tableCell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            if((results?.slider?.count) != nil)  {
              return 1
            }
            
        }else{
            if let cellNum = results?.materials?.count {
                return cellNum
            }
        }
       return 0
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if indexPath.section == 0 {
//            let typeACell = newsTableView.dequeueReusableCell(withIdentifier: "NewsTableViewCell", for: indexPath) as! NewsTableViewCell
//            if let sliderArr = results?.slider {
//                typeACell
//            }
            return typeACell
        }
    

}
