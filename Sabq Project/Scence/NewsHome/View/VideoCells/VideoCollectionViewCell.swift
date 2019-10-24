//
//  VideoCollectionViewCell.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/24/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class VideoCollectionViewCell: UICollectionViewCell {

    class var CustomCell : VideoCollectionViewCell {
        let cell = Bundle.main.loadNibNamed("VideoCollectionViewCell", owner: self, options: nil)?.last
        return cell as! VideoCollectionViewCell
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func config(comicsObj : Comic){
      
        let placeholderimage = UIImage(named: "imgslider")
//        newsImage.sd_setImage(with: URL(string: materialObj.coverPhoto!), placeholderImage: placeholderimage)
    }


}
