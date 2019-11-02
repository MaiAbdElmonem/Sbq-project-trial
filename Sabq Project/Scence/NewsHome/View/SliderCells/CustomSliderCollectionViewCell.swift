//
//  CustomSliderCollectionViewCell.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/20/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit
import SDWebImage
import SkeletonView

class CustomSliderCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var describtionLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var noOfViewsLabel: UILabel!
    
//    class var CustomCell : CustomSliderCollectionViewCell {
//        let cell = Bundle.main.loadNibNamed("CustomSliderCollectionViewCell", owner: self, options: nil)?.last
//        return cell as! CustomSliderCollectionViewCell
//    }

    override func awakeFromNib() {
        super.awakeFromNib()
//         titleTextview.showAnimatedGradientSkeleton()
//        hideSkeleton()
    }
    
//    func hideSliderSkelton() {
//        let skeltonSlider = [newsImage, titleLabel, describtionLabel, timeLabel, noOfViewsLabel]
//        skeltonSlider.forEach { $0?.hideSkeleton() }
//    }
    
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
