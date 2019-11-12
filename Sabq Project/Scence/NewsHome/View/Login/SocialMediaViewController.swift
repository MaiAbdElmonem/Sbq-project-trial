//
//  SocialMediaViewController.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 11/12/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit
import GoogleSignIn

class SocialMediaViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance()?.presentingViewController = self
    }

    @IBAction func googleLogin(_ sender: Any) {
         GIDSignIn.sharedInstance()?.signIn()
    }
}
