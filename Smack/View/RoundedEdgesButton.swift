//
//  RoundedEdgesButton.swift
//  Smack
//
//  Created by Adrian horstmann on 31.08.17.
//  Copyright © 2017 Adrian Horstmann. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedEdgesButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 5.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        self.setupView()
    }
    
    func setupView() {
        self.layer.cornerRadius = cornerRadius
    }
}
