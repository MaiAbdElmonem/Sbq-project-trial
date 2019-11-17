//
//  SocialMediaViewController.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 11/12/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit
import GoogleSignIn
import TwitterKit

class SocialMediaViewController: UIViewController {
    @IBOutlet private weak var googleBtn: UIButton!
    @IBOutlet private weak var twitterBtn: UIButton!
    @IBOutlet private weak var googleView: UIView!
    @IBOutlet private weak var twitterView: UIView!
    @IBOutlet private weak var facebookView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance()?.presentingViewController = self
        googleBtn.layer.borderWidth = 1.86
        googleBtn.layer.borderColor = #colorLiteral(red: 0.8470588235, green: 0.8470588235, blue: 0.8470588235, alpha: 1)
        
        googleView.layer.borderWidth = 1.86
        googleView.layer.borderColor = #colorLiteral(red: 0.7882352941, green: 0.7882352941, blue: 0.7843137255, alpha: 1)
        
        twitterView.layer.borderWidth = 2.0
        twitterView.layer.borderColor = #colorLiteral(red: 0.3227473795, green: 0.5775752068, blue: 0.89898628, alpha: 1)

        facebookView.layer.borderWidth = 2.0
        facebookView.layer.borderColor = #colorLiteral(red: 0.2213260829, green: 0.313049376, blue: 0.5126606226, alpha: 1)
        
        googleTabGesture()
        twitterTabGesture()

    }

    @IBAction func googleLogin(_ sender: Any) {
         GIDSignIn.sharedInstance()?.signIn()
    }
    
    func googleTabGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(googleLogin))
               googleView.addGestureRecognizer(tapGesture)
               googleView.isUserInteractionEnabled = true
    }
    
    func twitterTabGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(twitterLogin))
        twitterView.addGestureRecognizer(tapGesture)
        twitterView.isUserInteractionEnabled = true
    }
    
    @IBAction func twitterLogin(_ sender: Any) {
        TWTRTwitter.sharedInstance().logIn(completion: { (session, error) in
            if (session != nil) {
                guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else { return }
                appDelegate.setUpHomeScreen()
            } else {
                print("error: \(String(describing: error?.localizedDescription))");
            }
        })
    }
}


//        googleBtn.setImage(#imageLiteral(resourceName: "ic_google"), for: .normal)
//           googleBtn.imageView?.contentMode = .scaleAspectFit
//           googleBtn.imageView?.layer.borderWidth = 1.86
//        googleBtn.imageView?.layer.borderColor = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
//           googleBtn.imageEdgeInsets = UIEdgeInsets(top: 0, left: 100, bottom: 0, right: 0)
