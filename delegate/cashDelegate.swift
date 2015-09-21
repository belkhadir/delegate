//
//  cashDelegate.swift
//  delegate
//
//  Created by Anas Belkhadir on 20/09/2015.
//  Copyright © 2015 Anas Belkhadir. All rights reserved.
//

import UIKit

class CashDelegate: NSObject, UITextFieldDelegate {
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        let oldText = textField.text as! NSString
        var newText = oldText.stringByReplacingCharactersInRange(range, withString: string)
        var newTextString = String(newText)
        let digits = NSCharacterSet.decimalDigitCharacterSet()
        var digitsText = ""
        for c in newTextString.unicodeScalars {
            if digits.longCharacterIsMember(c.value){
                digitsText.append(c)
            }
        }
        print(digitsText)
        if let numOfPennies = Int(digitsText){
            print("1--- \(newText)")
            newText = "$" + self.returnCash(numOfPennies) + "." + self.returnCent(numOfPennies)
            print("2--- \(newText)")
        }else{
            newText = "$0.00"
        }
        textField.text = newText
        return true
    }
    
    
    func returnCent(cash: Int) -> String {
        let cent = cash % 100
        var centString = String(cent)
        if cent < 10 {
            centString = "0" + centString
        }
        return centString
    }
    func returnCash(cash: Int) -> String {
        if cash < 10 {
            return"0"
        }
        return String(cash / 100)
    }
}