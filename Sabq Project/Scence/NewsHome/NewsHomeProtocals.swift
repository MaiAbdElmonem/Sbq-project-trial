//
//  ListActorsProtocals.swift
//  TMDB
//
//  Created by Bassem Abbas on 9/24/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation

protocol NewsPresenterProtocal: BasePresenterProtocol{
   
    func loadNewsSliders()
   
}

protocol NewsViewProtocal:BaseViewProtocal {
    func getNewsSlider(slider : [Material], materials:[Material])
}

protocol NewsModelProtocal:BaseModelProtocal {
    func getNewsSlider( compelation: @escaping(Result<Any,Error>) ->Void)
     func getNewsVideos( compelation: @escaping(Result<Any,Error>) ->Void)
//     func getNewsArticles( compelation: @escaping(Result<Any,Error>) ->Void)
}


protocol NewsAdapterProtocal:BaseListAdapterProtocal {
   
}
