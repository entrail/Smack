//
//  CreateAccountViewController.swift
//  Smack
//
//  Created by Adrian horstmann on 30.08.17.
//  Copyright © 2017 Adrian Horstmann. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND_CREATE_ACCOUNT, sender: nil)
    }
    
}
