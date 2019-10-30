//
//  TabbarController.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/17/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

class TabbarController: UITabBarController {
    var newsViewController = Module.homeModule()
    var commonViewController = CommonNewsViewController()
    var searchViewController = SearchNewsViewController()
    var bookmarkViewController = BookmarksViewController()
   lazy var subviewControllers: [UIViewController] =
    [newsViewController, commonViewController, searchViewController, bookmarkViewController]

    override func viewDidLoad() {
        super.viewDidLoad()
        let title = NSLocalizedString("titleOftab1", comment: "tab1")
        print(title)
        newsViewController.tabBarItem = UITabBarItem(
            title: title, image: #imageLiteral(resourceName: "ic_newspaper"), selectedImage: #imageLiteral(resourceName: "ic_newspaper_active"))
        newsViewController.tabBarItem.tag = 0
        commonViewController.tabBarItem = UITabBarItem(
            title: NSLocalizedString("titleOftab2", comment: "tab2"), image: #imageLiteral(resourceName: "ic_star"), selectedImage: #imageLiteral(resourceName: "ic_star_active"))
        commonViewController.tabBarItem.tag = 1
        searchViewController.tabBarItem = UITabBarItem(
            title: NSLocalizedString("titleOftab3", comment: "tab3"), image: #imageLiteral(resourceName: "ic_search"), selectedImage: #imageLiteral(resourceName: "ic_search_active"))
        searchViewController.tabBarItem.tag = 2
        bookmarkViewController.tabBarItem = UITabBarItem(
            title: NSLocalizedString("titleOftab4", comment: "tab4"), image: #imageLiteral(resourceName: "ic_bookmark"), selectedImage: #imageLiteral(resourceName: "ic_bookmark_active"))
        bookmarkViewController.tabBarItem.tag = 3
        
        self.setViewControllers(subviewControllers, animated: true)
        self.selectedIndex = 0
        self.selectedViewController = newsViewController
    }
    
    override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
        _ = self.navigationController?.navigationBar

        let userImage = UIBarButtonItem(
            image: #imageLiteral(resourceName: "img_user").withRenderingMode(.alwaysOriginal), style: UIBarButtonItem.Style.plain,
            target: self, action: #selector(user))
        
        self.navigationItem.leftBarButtonItem = userImage
        
        let notificationButton = UIBarButtonItem(
            image: #imageLiteral(resourceName: "notification-icon").withRenderingMode(.alwaysOriginal), style: UIBarButtonItem.Style.plain,
            target: self, action: #selector(notificationButtonClick))
        self.navigationItem.rightBarButtonItem = notificationButton
        
        let logoImage = UIImageView(frame: CGRect(x: 0, y: 0, width: 40, height: 40))
        logoImage.contentMode = .scaleAspectFill
        let image = #imageLiteral(resourceName: "img_logo").withRenderingMode(.alwaysOriginal)
        logoImage.image = image
        navigationItem.titleView = logoImage
    }
    
    @objc
    func user() {
        print("userPhoto")
    }
    
    @objc
    func notificationButtonClick() {
     print("notifications")
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
