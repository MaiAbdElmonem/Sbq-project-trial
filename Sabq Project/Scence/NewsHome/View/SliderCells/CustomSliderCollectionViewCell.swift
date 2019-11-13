//
//  CustomSliderCollectionViewCell.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/20/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit
import SDWebImage

class CustomSliderCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet private weak var newsImage: UIImageView!
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var describtionLabel: UILabel!
    @IBOutlet private weak var timeLabel: UILabel!
    @IBOutlet private weak var noOfViewsLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()

        titleLabel.textColor = UIColor(named: "SliderTitleColor")
        describtionLabel.textColor = UIColor(named: "DescriptionColor")
    }
    
    func config(materialObj: Material) {
        titleLabel.text = materialObj.title
        describtionLabel.text = materialObj.descriptionString
        timeLabel.text = (materialObj.publishDate?.convetDate())?.timeAgo()
        noOfViewsLabel.text = materialObj.noOfViews?.formatNumber()
        let placeholderimage = #imageLiteral(resourceName: "loaded")
        if let imageUrl = materialObj.coverPhoto {
        newsImage.sd_setImage(with: URL(string: imageUrl), placeholderImage: placeholderimage)
        } else {
            newsImage.image = placeholderimage
        }
  }
}
