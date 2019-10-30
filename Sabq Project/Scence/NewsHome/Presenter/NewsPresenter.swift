//
//  NewsPresenter.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/21/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import Foundation

class NewsPresenter: BasePresenter, NewsPresenterProtocal {
  
    var homeModel: NewsModelProtocal
    var homeView: NewsViewProtocal
    
    init(model: NewsModelProtocal, view: NewsViewProtocal) {
        homeModel = model
        homeView = view
    }
    
    func loadNewsSliders() {
        homeModel.getNewsSlider { result in
//            do {
////                let results = try result.get() as! RootClass
//                let newsslider =result
//                    //(try result.get() as! RootClass).slider
//                let newsmaterials = (try result.get() as! RootClass).materials
//                self.homeView!.getNewsSliderList(sliderArr: newsslider!, materialsArr: newsmaterials!)
//            }catch {
//                print(error)
//            }
            
            switch result {
            case .success(let obj):
                let slider = (obj as? SliderResponse)?.slider
                let material = (obj  as? SliderResponse)?.materials
                guard let sliderLists = slider, let materialLists = material else { return }
                self.homeView.getNewsSliderList(sliderArr: sliderLists, materialsArr: materialLists)
            case .failure: (print("help from presenter"))
            }
        }
    }
    
    func loadNewsImages() {
        homeModel.getNewsImages { result in
            do {
                let imagecomics = (try result.get() as? ImageResponse)?.comics
                guard let res = imagecomics else { return }
                self.homeView.getNewsImagesList(imagesArr: res)
            } catch {
                print(error)
            }
        }
    }
    
    func loadNewsVideos() {
        homeModel.getNewsVideos { result in
        switch result {
        case .success(let vobj):
            let video = (vobj as? VideoResponse)?.comics
            guard let res = video else { return }
            self.homeView.getNewsVideosList(videoArr: res)
        case .failure: (print("help from presenter"))
            }
        }
    }
//        homeModel?.getNewsVideos { result in
//            do {
//                let videocomics = (try result.get() as! VideoResponse).comics
//                self.homeView?.getNewsVideosList(videoArr: videocomics!)
//            }catch {
//                print(error)
//        }
//    }
//  }
    
    func loadNewsArticles() {
        homeModel.getNewsArticles { result in
            do {
                let articlesmaterials = (try result.get() as? ArticleResponse)?.materials
                guard let res = articlesmaterials else { return }
                self.homeView.getNewsArticlesList(articlesArr: res)
            } catch {
                print(error)
            }
            
        }
    }
    
}
