//
//  NewsViewController.swift
//  Sabq Project
//
//  Created by mai ahmed on 10/18/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class NewsViewController: UIViewController{
//, UITableViewDelegate, UITableViewDataSource {

    

    @IBOutlet weak var newsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.newsTableView.delegate = self
//        self.newsTableView.dataSource = self
        setupComponent()
    }
    
    func setupComponent() {
        newsTableView.estimatedRowHeight = 50
        newsTableView.register(UINib(nibName: "NewsTableViewCell", bundle: nil), forCellReuseIdentifier: "tableCell")
    }
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//    }


  
}
