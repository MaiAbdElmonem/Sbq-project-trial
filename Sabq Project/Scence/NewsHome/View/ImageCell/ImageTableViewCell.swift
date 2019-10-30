//
//  ImageTableViewCell.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/24/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class ImageTableViewCell: UITableViewCell, UICollectionViewDelegate,
 UICollectionViewDataSource {
   
    @IBOutlet private weak var imageCollectionCell: UICollectionView!
    var imageList: [Comic]? {
        didSet {
            imageCollectionCell.reloadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imageCollectionCell.delegate = self
        imageCollectionCell.dataSource = self
        
        //TODO: need to setup collection view flow layout
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        //        flowLayout.itemSize = CGSize(width: 70, height: 80)
        flowLayout.minimumLineSpacing = 10
        flowLayout.minimumInteritemSpacing = 10
        self.imageCollectionCell.collectionViewLayout = flowLayout
        //————————register the xib for collection view cell
        let cellNib = UINib(nibName: "ImageCollectionViewCell", bundle: nil)
        self.imageCollectionCell.register(cellNib, forCellWithReuseIdentifier: "ImageCollectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(images: [Comic]) {
        imageList = images
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let imageslist = imageList {
            return imageslist.count
        } else {
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) ->
        UICollectionViewCell {
        guard let cell = imageCollectionCell.dequeueReusableCell(
            withReuseIdentifier: "ImageCollectionViewCell", for: indexPath)
            as? ImageCollectionViewCell,
             let imageComic = imageList?[indexPath.row] else { return UICollectionViewCell() }
        cell.configImage(comicsObj: imageComic)
        return cell
    }
}

extension ImageTableViewCell: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 0.5 * UIScreen.main.bounds.width, height: 0.8 * collectionView.frame.height)
    }
}
