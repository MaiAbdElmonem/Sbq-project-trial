//
//  NewsTableViewCell.swift
//  Sabq Project
//
//  Created by mai ahmed on 10/18/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class SliderTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {
    
    @IBOutlet private weak var sliderCollectionView: UICollectionView!
    @IBOutlet private weak var pageControl: UIPageControl!
    
    var slideList: [Material]? {
        didSet {
            sliderCollectionView.reloadData()
        }
    }
  
    override func awakeFromNib() {
        super.awakeFromNib()
        self.sliderCollectionView.delegate = self
        self.sliderCollectionView.dataSource = self
        
        //TODO: need to setup collection view flow layout
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.itemSize = UICollectionViewFlowLayout.automaticSize
        flowLayout.minimumLineSpacing = 0
        flowLayout.minimumInteritemSpacing = 0
        self.sliderCollectionView.collectionViewLayout = flowLayout
        //————————register the xib for collection view cell
        let cellNib = UINib(nibName: "CustomSliderCollectionViewCell", bundle: nil)
        self.sliderCollectionView.register(cellNib, forCellWithReuseIdentifier: "CustomSliderCollectionViewCell")
        sliderCollectionView.backgroundColor = UIColor(named: "bgColor")
      
    }
    
        func collectionView(_ collectionView: UICollectionView,
                            willDisplay cell: UICollectionViewCell,
                            forItemAt indexPath: IndexPath) {
            pageControl.currentPage = indexPath.row
        }
    
//    func configureCell(slider: [Material]) {
//    slideList = slider
//    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let sliderlist = slideList {
           self.pageControl.numberOfPages = sliderlist.count
            return sliderlist.count
        } else {
            self.pageControl.numberOfPages = 0
            return 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath)
        -> UICollectionViewCell {
        guard let cell = sliderCollectionView.dequeueReusableCell(
            withReuseIdentifier: "CustomSliderCollectionViewCell", for: indexPath)
            as? CustomSliderCollectionViewCell,
            let sliderMaterial = slideList?[indexPath.row] else { return UICollectionViewCell() }
            cell.config(materialObj: sliderMaterial)
           
        return cell
    }
   
}
    extension SliderTableViewCell: UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView,
                            layout collectionViewLayout: UICollectionViewLayout,
                            sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: sliderCollectionView.frame.width,
                          height: sliderCollectionView.frame.height)
        }
    }
