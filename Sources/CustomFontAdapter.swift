//
//  CustomFontAdapter.swift
//  CustomUI
//
//  Created by XiaLuo on 16/11/9.
//  Copyright © 2016年 Hangzhou Gravity Cyber Info Corp. All rights reserved.
//

import UIKit

private let IS_IPHONE_7 = UIScreen.main.bounds.height == 667
private let IS_IPHONE_5 = UIScreen.main.bounds.height == 568
private let IS_IPHONE_4 = UIScreen.main.bounds.height == 480
private let IPHONE7_DECREASE: CGFloat = 1
private let IPHONE5_DECREASE: CGFloat = 2
private let IPHONE4_DECREASE: CGFloat = 3

class CustomFontAdapter: NSObject {
    
    class func adjustFont(font: UIFont?) -> UIFont? {
        if let aFont = font {
            var newFont: UIFont?
            if IS_IPHONE_7 {
                newFont = UIFont(name: aFont.fontName, size: aFont.pointSize - IPHONE7_DECREASE)
            }else if IS_IPHONE_5 {
                newFont = UIFont(name: aFont.fontName, size: aFont.pointSize - IPHONE5_DECREASE)
            }else if IS_IPHONE_4 {
                newFont = UIFont(name: aFont.fontName, size: aFont.pointSize - IPHONE4_DECREASE)
            }else {
                newFont = aFont
            }
            return newFont
        }else{
            return nil
        }
    }
}
