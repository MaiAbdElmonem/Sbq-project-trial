//
//  ListActorsProtocals.swift
//  TMDB
//
//  Created by Bassem Abbas on 9/24/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation

protocol NewsPresenterProtocal: BasePresenterProtocol {
    func loadNewsSliders()
    func loadNewsVideos()
    func loadNewsImages()
    func loadNewsArticles()
}

protocol NewsViewProtocal: BaseViewProtocal {
    func getNewsSliderList(sliderArr: [Material], materialsArr: [Material])
    func getNewsVideosList(videoArr: [Comic])
     func getNewsImagesList(imagesArr: [Comic])
     func getNewsArticlesList(articlesArr: [Material])
}

protocol NewsModelProtocal: BaseModelProtocal {
    func getNewsSlider( compelation: @escaping(Result<Any, Error>) -> Void)
//    func getNewsMaterial( compelation: @escaping(Result<Any,Error>) ->Void)
     func getNewsVideos( compelation: @escaping(Result<Any, Error>) -> Void)
     func getNewsImages( compelation: @escaping(Result<Any, Error>) -> Void)
     func getNewsArticles( compelation: @escaping(Result<Any, Error>) -> Void)
}
