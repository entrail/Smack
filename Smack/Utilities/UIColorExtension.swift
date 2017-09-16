//
//  UIColorExtension.swift
//  Smack
//
//  Created by Adrian horstmann on 16.09.17.
//  Copyright © 2017 Adrian Horstmann. All rights reserved.
//

import Foundation

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        let newRed = CGFloat(red)/255
        let newGreen = CGFloat(green)/255
        let newBlue = CGFloat(blue)/255
        
        self.init(red: newRed, green: newGreen, blue: newBlue, alpha: 1.0)
    }
}
