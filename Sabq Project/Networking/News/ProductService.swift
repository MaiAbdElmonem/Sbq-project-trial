//
//  ProductService.swift
//  Sample MVP
//
//  Created by Bassem Abbas on 9/18/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation
import Moya

//swiftlint:disable  force_unwrapping

enum  NewsService {
    case slider
    case images
    case videos
    case aricles
}

extension NewsService: TargetType {
    var baseURL: URL {
        return URL(string: NetworkManager.shared.networkConfig.baseUrl)!
    }
    
    var path: String {
        switch self {
        case .slider:
            return "material/homepage-light-version/"
        case .videos:
            return "studio/list-studio/"
        case .aricles:
            return "material/articles"
        case .images:
             return "studio/list-studio/"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .slider, .aricles, .videos, .images :
            return .get
        
        }
    }
    
    var sampleData: Data {
        switch self {
        case .slider, .videos, .aricles, .images:
            return Data()
        }
    }
    
    var task: Task {        
        switch self {
        case .slider :
            
            return .requestParameters(parameters: ["" : ""],
                                                encoding: URLEncoding.default)
        case .videos:
           
            return .requestParameters(parameters: ["type":"video"], encoding: URLEncoding.default)
            
        case .images:
            return .requestParameters(parameters: ["type":"image"], encoding: URLEncoding.default)
            
        case .aricles:
            
            return .requestParameters(parameters: ["" : ""], encoding: URLEncoding.default)
        }
    }
    
    var headers: [String: String]? {
        return nil
    }
}
