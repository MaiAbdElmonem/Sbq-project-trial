//
//  ArticleCollectionViewCell.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/24/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class ArticleCollectionViewCell: UICollectionViewCell {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var authorImage: UIImageView!
    
    @IBOutlet private weak var authorNameLabel: UILabel!
//    class var CustomCell : ArticleCollectionViewCell {
//        let cell = Bundle.main.loadNibNamed("ArticleCollectionViewCell", owner: self, options: nil)?.last
//        return cell as! ArticleCollectionViewCell
//    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configArticle(materialObj: Material) {
        titleLabel.text = materialObj.title
        authorNameLabel.text = materialObj.authorName
        let placeholderimage = #imageLiteral(resourceName: "imgslider")
        if let imageUrl = materialObj.authorImg {
             authorImage.sd_setImage(with: URL(string: imageUrl), placeholderImage: placeholderimage)
        } else {
            authorImage.image = placeholderimage
        }
        
    }

}
