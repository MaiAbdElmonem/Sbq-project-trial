//
//  NewsModel.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/21/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import Foundation

class NewsModel: BaseModel, NewsModelProtocal {
  
    func getNewsSlider(compelation: @escaping (Result<Any, Error>) -> Void) {
        NetworkManager.shared.getNewsSlider { (result, _) in
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
            
//            switch result{
//                case .success(let obj): compelation(.success(obj))
//                case .failure(_): print("help from model")
//            }
//        }
//    }
    
    func getNewsImages(compelation: @escaping (Result<Any, Error>) -> Void) {
        NetworkManager.shared.getNewsImages { (result, _) in
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
        NetworkManager.shared.getNewsVideos { (result, _) in
            do {
                let res = try result.get()
                compelation(.success(res))
            } catch {
                print(error)
                compelation(.failure(error))
            }
        }
    }
    
    func getNewsArticles(compelation: @escaping (Result<Any, Error>) -> Void) {
        NetworkManager.shared.getNewsAricles { (result, _) in
            
            do {
                let res = try result.get()
                compelation(.success(res))
            } catch {
                print(error)
                compelation(.failure(error))
            }
        }
    }
}
