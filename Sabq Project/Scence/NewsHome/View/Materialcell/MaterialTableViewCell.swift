//
//  MaterialTableViewCell.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/24/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit
import SkeletonView
import LocalizedTimeAgo

class MaterialTableViewCell: UITableViewCell {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var newsImage: UIImageView!
    @IBOutlet private weak var timeLabel: UILabel!
    @IBOutlet private weak var numofViews: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
//        func hideSliderSkelton() {
//            let skeltonMaterial = [titleLabel, timeLabel, numofViews]
//            skeltonMaterial.forEach { $0?.hideSkeleton() }
//        }
    
    func config(materialObj: Material) {
        
        titleLabel.text = materialObj.title
        timeLabel.text = (materialObj.publishDate?.convetDate())?.timeAgo()
        
        numofViews.text = materialObj.noOfViews?.formatNumber()
        let placeholderimage = #imageLiteral(resourceName: "loaded")
         if let imageUrl = materialObj.coverPhoto {
                newsImage.sd_setImage(with: URL(string: imageUrl), placeholderImage: placeholderimage)
           } else {
            newsImage.image = placeholderimage
        }
    }
    
}
