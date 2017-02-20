//
//  CustomButton.swift
//  CustomUI
//
//  Created by XiaLuo on 16/11/9.
//  Copyright © 2016年 Hangzhou Gravity Cyber Info Corp. All rights reserved.
//

import UIKit

public class CustomButton: UIButton {
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        super.titleLabel?.font = CustomFontAdapter.adjustFont(font: titleLabel!.font)
    }
    
    public var textFont: UIFont {
        get {
            return super.titleLabel!.font
        }
        set (newFont) {
            super.titleLabel?.font = CustomFontAdapter.adjustFont(font: newFont)
        }
    }
    
}
