//
//  VideoCollectionViewCell.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/24/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit
import LocalizedTimeAgo

class VideoCollectionViewCell: UICollectionViewCell {
    @IBOutlet private weak var videoImage: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var timeLabel: UILabel!
    
//    class var CustomCell : VideoCollectionViewCell {
//        let cell = Bundle.main.loadNibNamed("VideoCollectionViewCell", owner: self, options: nil)?.last
//        return cell as! VideoCollectionViewCell
//    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func config(comicsObj: Comic) {
      titleLabel.text = comicsObj.title
        timeLabel.text = (comicsObj.publishDate?.convetDate())?.timeAgo()
        let placeholderimage = #imageLiteral(resourceName: "imgslider")
        if let imageUrl = comicsObj.coverPhoto {
        videoImage.sd_setImage(with: URL(string: imageUrl), placeholderImage: placeholderimage)
        } else {
            videoImage.image = placeholderimage
        }
  }
}
