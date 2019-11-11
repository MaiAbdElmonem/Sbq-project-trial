//
//  CreateModule.swift
//  TMDB
//
//  Created by Mai Abd Elmonem on 9/30/19.
//  Copyright © 2019 Ibtikar Technologies, Co. Ltd. All rights reserved.
//

import Foundation
import UIKit

class Module {
    static func homeModule() -> GoogleSignInViewController { // as routuing
//        let model = NewsModel()
        let view = GoogleSignInViewController()
//        let presenter = NewsPresenter(model: model, view: view)
        //run presenter of what view
//        view.setPresenter(presenter: presenter)
        return view    //to return and start listactors
    }
}
