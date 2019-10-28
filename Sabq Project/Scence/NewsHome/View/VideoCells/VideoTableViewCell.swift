//
//  VideoTableViewCell.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/24/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class VideoTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
   
    @IBOutlet weak var videoCollectionCell: UICollectionView!
    var videosList : [Comic]? {
        didSet {
            videoCollectionCell.reloadData()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        videoCollectionCell.delegate = self
        videoCollectionCell.dataSource = self
        
        //TODO: need to setup collection view flow layout
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
//        flowLayout.itemSize = CGSize(width: 70, height: 80)
        flowLayout.minimumLineSpacing = 0
        flowLayout.minimumInteritemSpacing = 0
        self.videoCollectionCell.collectionViewLayout = flowLayout
        //————————register the xib for collection view cell
        let cellNib = UINib(nibName: "VideoCollectionViewCell", bundle: nil)
        self.videoCollectionCell.register(cellNib, forCellWithReuseIdentifier: "VideoCollectionViewCell")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let videolist=videosList{
            return videolist.count
        }else{
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = videoCollectionCell.dequeueReusableCell(withReuseIdentifier: "VideoCollectionViewCell", for: indexPath) as! VideoCollectionViewCell
        cell.config(comicsObj: videosList![indexPath.row])
        return cell
    }
}
    extension VideoTableViewCell : UICollectionViewDelegateFlowLayout{
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: UIScreen.main.bounds.width, height: collectionView.frame.height)
        }
    }
    
    
    

