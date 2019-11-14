//
//  GoogleSignInViewController.swift
//  Sabq Project
//
//  Created by Mai Abd Elmonem on 11/7/19.
//  Copyright © 2019 Mai Abd Elmonem. All rights reserved.
//

import UIKit
import FittedSheets

class GoogleSignInViewController: UIViewController {
    @IBOutlet private weak var signInBtn: UIButton!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var userNameTextField: UITextField!
    @IBOutlet private weak var socialMediaButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       userNameTextField.setLeftPaddingPoints()
       passwordTextField.setLeftPaddingPoints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: false)
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
}
