//
//  AppDelegate.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/17/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [
        UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupNetworking()
        // Override point for customization after application launch.
        let tabbarController = TabbarController()
        let navigationController = UINavigationController(rootViewController: tabbarController)
        navigationController.isNavigationBarHidden = false
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        return true
    }
}
