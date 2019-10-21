//
//  CreateModule.swift
//  TMDB
//
//  Created by Mai Abd Elmonem on 9/30/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation

class Module {
    static func HomeModule() -> NewsViewController { // as routuing
        let model = NewsModel()
        let view = NewsViewController()
        let presenter = NewsPresenter(model: model, view: view)
        //run presenter of what view
        view.setPresenter(presenter: presenter)
        return view    //to return and start listactors
    }
}
