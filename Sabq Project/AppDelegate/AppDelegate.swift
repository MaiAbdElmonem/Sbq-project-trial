//
//  AppDelegate.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/17/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit
import GoogleSignIn
import TwitterKit
import UserNotifications

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, GIDSignInDelegate {
    
    let controller = GoogleSignInViewController()
    lazy var navigationController = UINavigationController(rootViewController: controller)
     
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if let error = error {
        if (error as NSError).code == GIDSignInErrorCode.hasNoAuthInKeychain.rawValue {
          print("The user has not signed in before or they have since signed out.")
        } else {
          print("\(error.localizedDescription)")
        }
        return
    }
        setUpHomeScreen()
}
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [
        UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupNetworking()
        setUpGoogleSignIn()
        setUpTwitterSignIn()
        setUpLoginScreen()
        return true
    }

    @available(iOS 9.0, *)
    func application(_ app: UIApplication, open url: URL, options: [
        UIApplication.OpenURLOptionsKey: Any]) -> Bool {
       let googleHandler = GIDSignIn.sharedInstance().handle(url)
       let twitterHandler = TWTRTwitter.sharedInstance().application(app, open: url, options: options)
        return googleHandler || twitterHandler
    }
    
    func setUpHomeScreen() {
          let tabbarController = TabbarController()
              navigationController.pushViewController(tabbarController, animated: false)
    }
    
    func setUpLoginScreen() {
        navigationController.isNavigationBarHidden = false
               window = UIWindow(frame: UIScreen.main.bounds)
               window?.rootViewController = navigationController
               window?.makeKeyAndVisible()
    }
    
    func setUpGoogleSignIn() {
        GIDSignIn.sharedInstance()?.clientID = (
            "968187002220-e459aaqefque55mhd1i5unh9e33osql4.apps.googleusercontent.com")
        GIDSignIn.sharedInstance().delegate = self
    }
    
    func setUpTwitterSignIn() {
        TWTRTwitter.sharedInstance().start(
            withConsumerKey: "yyAb8n7V0xM1sO9vAO2cAb4wf",
            consumerSecret: "eQLkaKxshQP2bZnX1kZsQMZZDrgH8EmMlYlQFuwijU1PdmX0MZ")
    }
    
    func setUpNotifications() {
        UNUserNotificationCenter.current().requestAuthorization(
            options: [.alert, .sound], completionHandler: {didAllow, error in
            
        })
        UIApplication.shared.registerForRemoteNotifications()
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        
    }
        
}
