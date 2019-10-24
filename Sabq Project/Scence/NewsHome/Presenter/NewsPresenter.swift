//
//  NewsPresenter.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/21/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import Foundation

class NewsPresenter : BasePresenter, NewsPresenterProtocal {
  
    var homeModel : NewsModelProtocal?
    var homeView : NewsViewProtocal?
    
    init(model : NewsModelProtocal , view : NewsViewProtocal) {
        homeModel = model
        homeView = view
    }
    
    func loadNewsSliders() {
        homeModel?.getNewsSlider { result in
            do {
//                let results = try result.get() as! RootClass
                let slider = (try result.get() as! RootClass).slider
                let materials = (try result.get() as! RootClass).materials
//                self.homeView?.getNewsSlider(slider: slider! , materials: material!)
            }catch {
                print(error)
            }
        }
    }
    
    func loadNewsImages() {
        homeModel?.getNewsImages { result in
            do{
                let imagecomics = (try result.get() as! ImageResponse).comics
                
            }catch{
                print(error)
            }
        }
    }
    
    
    
    func loadNewsVideos() {
        homeModel?.getNewsVideos { result in
            do {
                let comics = (try result.get() as! VideoResponse).comics
            }catch {
                print(error)
        }
    }
  }
    
    func loadNewsArticles() {
        homeModel?.getNewsArticles { result in
            do {
                let materials = (try result.get() as! ArticleResponse).materials
            }catch{
                print(error)
            }
            
        }
    }
    
    
}
