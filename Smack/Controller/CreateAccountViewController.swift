//
//  CreateAccountViewController.swift
//  Smack
//
//  Created by Adrian horstmann on 30.08.17.
//  Copyright © 2017 Adrian Horstmann. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    // Outlets
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND_CREATE_ACCOUNT, sender: nil)
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
        
    }
    
    @IBAction func pickBGColorPressed(_ sender: Any) {
        
    }
    
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailTxt.text , emailTxt.text != "" else {
            return
        }
        guard let password = passwordTxt.text , passwordTxt.text != "" else {
            return
        }
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if success {
                print("registered user!")
            }
        }
    }
    
}
