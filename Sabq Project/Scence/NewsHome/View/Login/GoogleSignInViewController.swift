//
//  GoogleSignInViewController.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 11/7/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit
import FittedSheets
import AuthenticationServices
import UserNotifications

class GoogleSignInViewController: UIViewController {
    @IBOutlet private weak var signInBtn: UIButton!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var userNameTextField: UITextField!
    @IBOutlet private weak var socialMediaButton: UIButton!
    @IBOutlet private weak var appleSignIn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTextField.setLeftPaddingPoints()
        passwordTextField.setLeftPaddingPoints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    @available(iOS 13.0, *)
    @IBAction func signInWithApple(_ sender: Any) {
        performExistingAccountSetupFlows()
    }
    
    @IBAction func showActionSheet(_ sender: UIButton) {
        print("show")
        let controller = SocialMediaViewController()
        let sheetController = SheetViewController(
            controller: controller, sizes: [.fixed(300), .fixed(375), .halfScreen, .fullScreen])
        
        sheetController.blurBottomSafeArea = false
        sheetController.adjustForBottomSafeArea = true
        sheetController.topCornersRadius = 0
        sheetController.dismissOnBackgroundTap = true
        sheetController.extendBackgroundBehindHandle = true
        
        self.present(sheetController, animated: true, completion: nil)
    }
    
    @available(iOS 13.0, *)
    func performExistingAccountSetupFlows() {
        // Prepare requests for both Apple ID and password providers.
        let requests = [ASAuthorizationAppleIDProvider().createRequest()]
        
        // Create an authorization controller with the given requests.
        let authorizationController = ASAuthorizationController(authorizationRequests: requests)
        authorizationController.delegate = self
        authorizationController.presentationContextProvider = self
        authorizationController.performRequests()
    }
}

extension GoogleSignInViewController: ASAuthorizationControllerDelegate {
    
    @available(iOS 13.0, *)
   func authorizationController(controller: ASAuthorizationController,
                                didCompleteWithAuthorization authorization: ASAuthorization) {
    if let appleIDCredential = authorization.credential as?  ASAuthorizationAppleIDCredential {
        _ = appleIDCredential.user
        _ = appleIDCredential.fullName
        _ = appleIDCredential.email
    }
  }
}

extension GoogleSignInViewController: ASAuthorizationControllerPresentationContextProviding {
    @available(iOS 13.0, *)
    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        return self.view.window ?? UIWindow()
    }
}
