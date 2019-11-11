//
//  GoogleSignInViewController.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 11/7/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit
import GoogleSignIn

class GoogleSignInViewController: UIViewController {
    @IBOutlet private weak var signInBtn: UIButton!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var userNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.userNameTextField.addPaddingToTextField()
         GIDSignIn.sharedInstance()?.presentingViewController = self

        signInBtn.addTarget(self, action: #selector(signInUsingGoogle(_:)), for: .touchUpInside)
    }
    
    @objc
    func signInUsingGoogle(_ sender: UIButton) {
           GIDSignIn.sharedInstance()?.signIn()
       }
    
    @IBAction func showActionSheet(_ sender: Any) {
         let actionSheetController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
                let loginWithGoogle = UIAlertAction(title: "التسجيل من خلال جوجل", style: .destructive)
                { action -> Void in
                    print("loginWithGoogle")
                }
                let loginWithTwitter = UIAlertAction(title: "التسجيل من خلال تويتر", style: .default)
                { action -> Void in
                print("loginWithTwitter")
                }
                let loginWithFacebook = UIAlertAction(title: "التسجيل من خلال فيسبوك", style: .default)
                { action -> Void in
                print("loginWithFacebook")
                }
                
                actionSheetController.addAction(loginWithGoogle)
                actionSheetController.addAction(loginWithTwitter)
                actionSheetController.addAction(loginWithFacebook)
                
                 present(actionSheetController, animated: true, completion: nil)
               // present an actionSheet...
               // present(actionSheetController, animated: true, completion: nil)   // doesn't work for iPad
        //       actionSheetController.popoverPresentationController?.sourceView = GoogleSignInViewController // works for both iPhone & iPad
    }
}
