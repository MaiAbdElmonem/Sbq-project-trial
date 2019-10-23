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
    
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var titleTextview: UITextView!
    @IBOutlet weak var descriptionTextview: UITextView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var noOfViewsLabel: UILabel!
    
    class var CustomCell : CustomSliderCollectionViewCell {
        let cell = Bundle.main.loadNibNamed("CustomSliderCollectionViewCell", owner: self, options: nil)?.last
        return cell as! CustomSliderCollectionViewCell
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = UIColor.red
    }
    
    func config(materialObj : Material){
        titleTextview.text = materialObj.title
        descriptionTextview.text = materialObj.descriptionString
        timeLabel.text = materialObj.publishDate
        noOfViewsLabel.text = String(materialObj.noOfViews!)
        let placeholderimage = UIImage(named: "imgslider")
        newsImage.sd_setImage(with: URL(string: materialObj.coverPhoto!), placeholderImage: placeholderimage)
    }

}
