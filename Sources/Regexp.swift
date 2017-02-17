//
//  Regexp.swift
//  ISwiftKit
//
//  Created by XiaLuo on 2017/2/17.
//  Copyright © 2017年 Hangzhou Gravity Cyber Info Corp. All rights reserved.
//

import UIKit

public class Regexp: NSObject {
    
    /**
     只能输入数字
     */
    public class func check(number: String) -> Bool {
        let regEx = "^[0-9]+$"
        return baseCheck(regEx: regEx, data: number)
    }
    
    /**
     校验只能输入n位的数字
     */
    public class func check(length: Int, number: String) -> Bool {
        let regEx = String(format: "^\\d{%d}$", length)
        return baseCheck(regEx: regEx, data: number)
    }
    
    /**
     邮箱校验
     */
    public class func check(email: String) -> Bool {
        let regEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Z]a-z{2,4}"
        return baseCheck(regEx: regEx, data: email)
    }
    
    /**
     验证手机号
     */
    public class func check(mobilePhone: String) -> Bool {
        let regEx = "^1[3|4|5|7|8][0-9]\\d{8}$"
        return baseCheck(regEx: regEx, data: mobilePhone)
    }
    
    /**
     验证电话号
     */
    public class func check(phone: String) -> Bool {
        let regEx = "^(\\d{3,4}-)\\d{7,8}$"
        return baseCheck(regEx: regEx, data: phone)
    }
    
    /**
     身份证验证
     */
    public class func check(idCard: String) -> Bool {
        let regEx = "(^[0-9]{15}$)|([0-9]{17}([0-9]|X)$)"
        return baseCheck(regEx: regEx, data: idCard)
    }
    
    /**
     密码校验
     */
    public class func check(shortest: NSInteger, longest: NSInteger, password: String) -> Bool {
        let regEx = String(format: "^[a-zA-Z0-9]{%ld,%ld}+$", shortest, longest, password)
        return baseCheck(regEx: regEx, data: password)
    }
    
    /**
     由数字和26个英文字母组成的字符串
     */
    public class func check(alphanumeric: String) -> Bool {
        let regEx = "^[A-Za-z0-9]+$"
        return baseCheck(regEx: regEx, data: alphanumeric)
    }
    
    /**
     小写字母
     */
    public class func check(lowercase: String) -> Bool {
        let regEx = "^[a-z]+$"
        return baseCheck(regEx: regEx, data: lowercase)
    }
    
    /**
     大写字母
     */
    public class func check(uppercase: String) -> Bool {
        let regEx = "^[A-Z]+$"
        return baseCheck(regEx: regEx, data: uppercase)
    }
    
    /**
     26位英文字母
     */
    public class func check(lowercaseAndUppercase: String) -> Bool {
        let regEx = "^[A-Za-z]+$"
        return baseCheck(regEx: regEx, data: lowercaseAndUppercase)
    }
    
    /**
     特殊字符
     */
    public class func check(specialChar: String) -> Bool {
        let regEx = "[^%&',;=?$]+"
        return baseCheck(regEx: regEx, data: specialChar)
    }
    
    /**
     基本的验证方法(私有)
     */
    private class func baseCheck(regEx: String, data: String) -> Bool {
        let card = NSPredicate(format: "SELF MATCHES %@", regEx)
        guard card.evaluate(with: data) else {
            return false
        }
        return true
    }


}
