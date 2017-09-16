//
//  ColorUtil.swift
//  Smack
//
//  Created by Adrian horstmann on 16.09.17.
//  Copyright © 2017 Adrian Horstmann. All rights reserved.
//

import Foundation

class ColorUtil {
    static let instance = ColorUtil()
    
    private init() {}
    
    func createUIColorFromRGBWithAlpha(red: Int, green: Int, blue: Int, alpha: Int) -> UIColor {
        
        let redFloat = CGFloat(red)
        let greenFloat = CGFloat(green)
        let blueFloat = CGFloat(blue)
        let alphaFloat = CGFloat(alpha)
        
        return UIColor(red: redFloat, green: greenFloat, blue: blueFloat, alpha: alphaFloat)
    }
    
    
}
