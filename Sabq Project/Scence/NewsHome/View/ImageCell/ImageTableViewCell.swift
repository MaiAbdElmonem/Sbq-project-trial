//
//  ImageTableViewCell.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/24/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource{
   
    @IBOutlet weak var imageCollectionCell: UICollectionView!
    var imageList : [Comic]?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageCollectionCell.delegate = self
        imageCollectionCell.dataSource = self
        
        //TODO: need to setup collection view flow layout
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        //        flowLayout.itemSize = CGSize(width: 70, height: 80)
        flowLayout.minimumLineSpacing = 0
        flowLayout.minimumInteritemSpacing = 0
        self.imageCollectionCell.collectionViewLayout = flowLayout
        //————————register the xib for collection view cell
        let cellNib = UINib(nibName: "ImageCollectionViewCell", bundle: nil)
        self.imageCollectionCell.register(cellNib, forCellWithReuseIdentifier: "ImageCollectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageList!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = imageCollectionCell.dequeueReusableCell(withReuseIdentifier: "ImageCollectionViewCell", for: indexPath) as! ImageCollectionViewCell
        cell.configImage(comicsObj: imageList![indexPath.row])
        return cell
    }
    
}
