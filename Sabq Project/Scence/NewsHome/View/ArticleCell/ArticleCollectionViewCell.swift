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
    @IBOutlet weak var articleView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        titleLabel.textColor = UIColor(named: "ArticleTitleColor")
        authorNameLabel.textColor = UIColor(named: "AuthorNameColor")
        self.backgroundColor = UIColor(named: "ArticleCustomCellColor")
        articleView.backgroundColor = UIColor(named: "ViewColor")
    }
    
    func configArticle(materialObj: Material) {
        titleLabel.text = materialObj.title
        authorNameLabel.text = materialObj.authorName
        let placeholderimage = #imageLiteral(resourceName: "loaded")
        if let imageUrl = materialObj.authorImg {
             authorImage.sd_setImage(with: URL(string: imageUrl), placeholderImage: placeholderimage)
        } else {
            authorImage.image = placeholderimage
        }
        
    }

}
