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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        titleLabel.textColor = UIColor(named: "VideoTitleColor")
    }
    
    func config(comicsObj: Comic) {
      titleLabel.text = comicsObj.title
        timeLabel.text = (comicsObj.publishDate?.convetDate())?.timeAgo()
        guard let path = comicsObj.vid else { return }
        self.videoImage.sd_setImage(with: URL(
            string: "https://img.youtube.com/vi/\(path)/1.jpg"), placeholderImage: #imageLiteral(resourceName: "loaded") )
  }
}
