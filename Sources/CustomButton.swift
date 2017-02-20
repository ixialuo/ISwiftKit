//
//  CustomButton.swift
//  CustomUI
//
//  Created by XiaLuo on 16/11/9.
//  Copyright © 2016年 Hangzhou Gravity Cyber Info Corp. All rights reserved.
//

import UIKit

class CustomButton: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        super.titleLabel?.font = CustomFontAdapter.adjustFont(font: titleLabel!.font)
    }
    
    var textFont: UIFont {
        get {
            return super.titleLabel!.font
        }
        set (newFont) {
            super.titleLabel?.font = CustomFontAdapter.adjustFont(font: newFont)
        }
    }
    
}
