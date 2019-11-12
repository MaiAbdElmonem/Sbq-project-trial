//
//  GoogleSignInViewController.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 11/7/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit
import FittedSheets
import GoogleSignIn

class GoogleSignInViewController: UIViewController {
    @IBOutlet private weak var signInBtn: UIButton!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var userNameTextField: UITextField!
    @IBOutlet private weak var socialMediaButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.userNameTextField.addPaddingToTextField()
//        let button = UIButton(type: .custom)
//        button.setImage(#imageLiteral(resourceName: "ic_eye"), for: .normal)
//        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
//         button.frame = CGRect(x: CGFloat(51),
//                               y: CGFloat(261), width: CGFloat(25), height: CGFloat(19))
////        button.addTarget(self, action: #selector(self.refresh), for: .touchUpInside)
//        passwordTextField.rightView = button
//        passwordTextField.rightViewMode = .always
    }
    
    @IBAction func showActionSheet(_ sender: UIButton) {
        print("jfjf")
        let controller = SocialMediaViewController()
        let sheetController = SheetViewController(
            controller: controller, sizes: [.fixed(300), .fixed(375), .halfScreen, .fullScreen])

        // Adjust how the bottom safe area is handled on iPhone X screens
        sheetController.blurBottomSafeArea = false
        sheetController.adjustForBottomSafeArea = true

        // Turn off rounded corners
        sheetController.topCornersRadius = 0

        // Make corners more round
        sheetController.topCornersRadius = 15

        // Disable the dismiss on background tap functionality
        sheetController.dismissOnBackgroundTap = true

        // Extend the background behind the pull bar instead of having it transparent
        sheetController.extendBackgroundBehindHandle = true

        self.present(sheetController, animated: false, completion: nil)
    }
}
