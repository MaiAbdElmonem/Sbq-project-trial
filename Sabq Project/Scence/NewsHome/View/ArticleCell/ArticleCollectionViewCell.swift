//
//  ArticleCollectionViewCell.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/24/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class ArticleCollectionViewCell: UICollectionViewCell {
    
    class var CustomCell : ArticleCollectionViewCell {
        let cell = Bundle.main.loadNibNamed("ArticleCollectionViewCell", owner: self, options: nil)?.last
        return cell as! ArticleCollectionViewCell
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configArticle(materialObj : Material){
        
        let placeholderimage = UIImage(named: "imgslider")
        //        newsImage.sd_setImage(with: URL(string: materialObj.coverPhoto!), placeholderImage: placeholderimage)
    }

}
