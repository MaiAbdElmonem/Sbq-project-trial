//
//  CustomSliderCollectionViewCell.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/20/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class CustomSliderCollectionViewCell: UICollectionViewCell {
    
    class var CustomCell : CustomSliderCollectionViewCell {
        let cell = Bundle.main.loadNibNamed("CustomSliderCollectionViewCell", owner: self, options: nil)?.last
        return cell as! CustomSliderCollectionViewCell
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.backgroundColor = UIColor.red
    }

}
