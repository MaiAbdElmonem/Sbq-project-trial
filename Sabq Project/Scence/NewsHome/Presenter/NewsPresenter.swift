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
                let newsslider = (try result.get() as! RootClass).slider
                let newsmaterials = (try result.get() as! RootClass).materials
                self.homeView?.getNewsSliderList(sliderArr: newsslider!, materialsArr: newsmaterials!)
            }catch {
                print(error)
            }
        }
    }
    
    func loadNewsImages() {
        homeModel?.getNewsImages { result in
            do{
                let imagecomics = (try result.get() as! ImageResponse).comics
                self.homeView?.getNewsImagesList(ImagesArr: imagecomics!)
            }catch{
                print(error)
            }
        }
    }
    
    func loadNewsVideos() {
        homeModel?.getNewsVideos { result in
            do {
                let videocomics = (try result.get() as! VideoResponse).comics
                self.homeView?.getNewsVideosList(videoArr: videocomics!)
            }catch {
                print(error)
        }
    }
  }
    
    func loadNewsArticles() {
        homeModel?.getNewsArticles { result in
            do {
                let articlesmaterials = (try result.get() as! ArticleResponse).materials
                self.homeView?.getNewsArticlesList(articlesArr: articlesmaterials!)
            }catch{
                print(error)
            }
            
        }
    }
    
    
}
