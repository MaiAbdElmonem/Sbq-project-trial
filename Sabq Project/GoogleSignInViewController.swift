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
    @IBOutlet weak var signInBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         GIDSignIn.sharedInstance()?.presentingViewController = self

        signInBtn.addTarget(self, action: #selector(signInUsingGoogle(_:)), for: .touchUpInside)
    }
    
    @objc
    func signInUsingGoogle(_ sender: UIButton) {
        GIDSignIn.sharedInstance()?.signIn()
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
