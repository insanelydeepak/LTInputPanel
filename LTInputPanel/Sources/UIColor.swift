//
//  UIColor.swift
//  Slowmo
//
//  Created by ltebean on 16/4/22.
//  Copyright © 2016年 io.ltebean. All rights reserved.
//

import UIKit

public extension UIColor {
    
    public convenience init(hex: Int) {
        let red = CGFloat((hex & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((hex & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(hex & 0x0000FF) / 255.0
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
    
    public static func colorWithRGB(red red: Int, green: Int, blue: Int, alpha: Float = 1) -> UIColor {
        return UIColor(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: CGFloat(alpha)
        )
    }
}
