//
//  ImageCollectionViewCell.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/24/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit
import LocalizedTimeAgo

class ImageCollectionViewCell: UICollectionViewCell {
    @IBOutlet private weak var newsImage: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var timeLabel: UILabel!
    
//    class var CustomCell: ImageCollectionViewCell {
//        let cell = Bundle.main.loadNibNamed("ImageCollectionViewCell", owner: self, options: nil)?.last
//        return cell as! ImageCollectionViewCell
//    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configImage(comicsObj: Comic) {
        titleLabel.text = comicsObj.title
        timeLabel.text = (comicsObj.publishDate?.convetDate())?.timeAgo()
        let placeholderimage = #imageLiteral(resourceName: "loaded")
         if let imageUrl = comicsObj.coverPhoto {
                newsImage.sd_setImage(with: URL(string: imageUrl), placeholderImage: placeholderimage)
         } else {
             newsImage.image = placeholderimage
        }
    }

}
