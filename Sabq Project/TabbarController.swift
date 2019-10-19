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
//        self.view.backgroundColor = .white
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
        commonViewController?.tabBarItem = UITabBarItem(title: "الشائع", image: #imageLiteral(resourceName: "ic_star"), selectedImage: #imageLiteral(resourceName: "ic_star_active"))
        commonViewController?.tabBarItem.tag = 1
        searchViewController?.tabBarItem = UITabBarItem(title: "بحث", image: #imageLiteral(resourceName: "ic_search"), selectedImage: #imageLiteral(resourceName: "ic_search_active"))
        searchViewController?.tabBarItem.tag = 2
        bookmarkViewController?.tabBarItem = UITabBarItem(title: NSLocalizedString("titleOftab3", comment: "tab3"), image: #imageLiteral(resourceName: "ic_bookmark"), selectedImage: #imageLiteral(resourceName: "ic_bookmark_active"))
        bookmarkViewController?.tabBarItem.tag = 3
        
        self.setViewControllers(subviewControllers, animated: true)
        self.selectedIndex = 0
        self.selectedViewController = newsViewController
    }
    
//    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
//        switch item.tag {
//        case 0:
//            print("tab0")
//        case 1:
//            print("1")
//        case 2:
//            print("2")
//        case 3:
//            print("3")
//
//        default:
//           print("n")
//        }
//    }

}
