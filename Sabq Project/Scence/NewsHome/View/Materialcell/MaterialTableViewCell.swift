//
//  MaterialTableViewCell.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/24/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class MaterialTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var numofViews: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func config(materialObj : Material){
        titleLabel.text = materialObj.title
        timeLabel.text = materialObj.publishDate
        numofViews.text = String(materialObj.noOfViews!)
        let placeholderimage = UIImage(named: "imgslider")
        newsImage.sd_setImage(with: URL(string: materialObj.coverPhoto!), placeholderImage: placeholderimage)
    }
    
}
