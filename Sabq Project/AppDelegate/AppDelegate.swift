//
//  AppDelegate.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 10/17/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit
import GoogleSignIn

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, GIDSignInDelegate {
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if let error = error {
        if (error as NSError).code == GIDSignInErrorCode.hasNoAuthInKeychain.rawValue {
          print("The user has not signed in before or they have since signed out.")
        } else {
          print("\(error.localizedDescription)")
        }
        return
    }
        // Perform any operations on signed in user here.
        _ = user.userID                  // For client-side use only!
        _ = user.authentication.idToken // Safe to send to the server
        _ = user.profile.name
        _ = user.profile.givenName
        _ = user.profile.familyName
        _ = user.profile.email
    }
        
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [
        UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupNetworking()
        GIDSignIn.sharedInstance()?.clientID = (
            "968187002220-e459aaqefque55mhd1i5unh9e33osql4.apps.googleusercontent.com")
        GIDSignIn.sharedInstance().delegate = self
        
        // Override point for customization after application launch.
        let tabbarController = TabbarController()
        let navigationController = UINavigationController(rootViewController: tabbarController)
        navigationController.isNavigationBarHidden = false
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        return true
    }
    
    @available(iOS 9.0, *)
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any]) -> Bool {
        return GIDSignIn.sharedInstance().handle(url)
    }
}
