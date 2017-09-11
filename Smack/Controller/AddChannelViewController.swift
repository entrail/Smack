//
//  AddChannelViewController.swift
//  Smack
//
//  Created by Adrian horstmann on 10.09.17.
//  Copyright © 2017 Adrian Horstmann. All rights reserved.
//

import UIKit

class AddChannelViewController: UIViewController {
    
    // Outlets
    @IBOutlet weak var nameTxt: UITextField!
    @IBOutlet weak var channelDescriptionTxt: UITextField!
    @IBOutlet weak var bgView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setUpView()
    }
    
    
    @IBAction func closeModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createChannelPressed(_ sender: Any) {
        guard let channelName = nameTxt.text , nameTxt.text != "" else { return }
        guard let channelDescription = channelDescriptionTxt.text else { return }
        SocketService.instance.addChannel(channelName: channelName, channelDescription: channelDescription) { (success) in
            if success {
                self.dismiss(animated: true, completion: nil)
            }
        }
        
    }
    
    func setUpView() {
        nameTxt.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSAttributedStringKey.foregroundColor : SMACK_PURPLE_PLACEHOLDER])
        channelDescriptionTxt.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSAttributedStringKey.foregroundColor : SMACK_PURPLE_PLACEHOLDER])
        
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(closeTap(_ :)))
        bgView.addGestureRecognizer(closeTouch)
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
}
