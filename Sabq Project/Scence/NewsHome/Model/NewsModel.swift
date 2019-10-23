//
//  NewsModel.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/21/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import Foundation

class NewsModel : BaseModel, NewsModelProtocal {
   
    func getNewsSlider(compelation: @escaping (Result<Any, Error>) -> Void) {
        NetworkManager.shared.getNewsSlider() { (result,statusCode) in
            do {
                let res = try result.get()
                compelation(.success(res))
                print(res)
            } catch {
                print(error)
                compelation(.failure(error))
            }
        }
    }
    
    func getNewsVideos(compelation: @escaping (Result<Any, Error>) -> Void) {
        NetworkManager.shared.getNewsVideos { (result,statusCode) in
            do {
                let res = try result.get().materials
                compelation(.success(res!))
            } catch {
                print(error)
                compelation(.failure(error))
            }
        }
    }
    
//    func getNewsArticles(compelation: @escaping (Result<Any, Error>) -> Void) {
//        NetworkManager.shared.g { (result,statusCode) in
//            do {
//                let res = try result.get().slider
//                compelation(.success(res!))
//            } catch {
//                print(error)
//                compelation(.failure(error))
//            }
//        }
//    }
}
