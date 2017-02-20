//
//  CustomLabel.swift
//  CustomUI
//
//  Created by XiaLuo on 16/11/9.
//  Copyright © 2016年 Hangzhou Gravity Cyber Info Corp. All rights reserved.
//

import UIKit

public class CustomLabel: UILabel {
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        super.font = CustomFontAdapter.adjustFont(font: font)
    }
    
    override public var font: UIFont! {
        didSet {
            super.font = CustomFontAdapter.adjustFont(font: font)
        }
    }
    
}
