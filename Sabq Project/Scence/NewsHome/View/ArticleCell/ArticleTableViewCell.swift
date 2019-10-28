//
//  ArticleTableViewCell.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/24/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class ArticleTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
  
    @IBOutlet weak var articleCollectionCell: UICollectionView!
    var articleList : [Material]?{
        didSet {
            articleCollectionCell.reloadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        articleCollectionCell.delegate = self
        articleCollectionCell.dataSource = self
        
        //TODO: need to setup collection view flow layout
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        //        flowLayout.itemSize = CGSize(width: 70, height: 80)
        flowLayout.minimumLineSpacing = 0
        flowLayout.minimumInteritemSpacing = 0
        self.articleCollectionCell.collectionViewLayout = flowLayout
        //————————register the xib for collection view cell
        let cellNib = UINib(nibName: "ArticleCollectionViewCell", bundle: nil)
        self.articleCollectionCell.register(cellNib, forCellWithReuseIdentifier: "ArticleCollectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let articleslist=articleList{
            return articleslist.count
        }else{
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = articleCollectionCell.dequeueReusableCell(withReuseIdentifier: "ArticleCollectionViewCell", for: indexPath) as! ArticleCollectionViewCell
        cell.configArticle(materialObj: articleList![indexPath.row])
        return cell
    }
    

    
}
