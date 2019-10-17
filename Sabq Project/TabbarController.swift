//
//  TabbarController.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/17/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class TabbarController: UITabBarController {
    var newsViewController : NewsViewController?
    var commonViewController : CommonNewsViewController?
    var searchViewController : SearchNewsViewController?
    var bookmarkViewController : BookmarksViewController?
    var subviewControllers : [UIViewController] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
       newsViewController = NewsViewController()
        commonViewController = CommonNewsViewController()
        searchViewController = SearchNewsViewController()
        bookmarkViewController = BookmarksViewController()
        
        subviewControllers.append(newsViewController!)
        subviewControllers.append(commonViewController!)
        subviewControllers.append(searchViewController!)
        subviewControllers.append(bookmarkViewController!)
        
        newsViewController?.tabBarItem = UITabBarItem(title: "الاخبار", image: #imageLiteral(resourceName: "ic_newspaper"), selectedImage: #imageLiteral(resourceName: "ic_newspaper_active"))
        newsViewController?.tabBarItem.tag = 0
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
