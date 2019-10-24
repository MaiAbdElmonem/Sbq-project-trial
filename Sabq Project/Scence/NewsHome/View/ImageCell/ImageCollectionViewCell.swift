//
//  ImageCollectionViewCell.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/24/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class ImageCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    class var CustomCell : ImageCollectionViewCell {
        let cell = Bundle.main.loadNibNamed("ImageCollectionViewCell", owner: self, options: nil)?.last
        return cell as! ImageCollectionViewCell
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configImage(comicsObj : Comic){
        titleLabel.text = comicsObj.title
        timeLabel.text = comicsObj.publishDate
        let placeholderimage = UIImage(named: "imgslider")
                newsImage.sd_setImage(with: URL(string: comicsObj.coverPhoto!), placeholderImage: placeholderimage)
    }


}
