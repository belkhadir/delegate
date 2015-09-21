//
//  randomColorDelegate.swift
//  delegate
//
//  Created by Anas Belkhadir on 20/09/2015.
//  Copyright © 2015 Anas Belkhadir. All rights reserved.
//

import UIKit
import Foundation

class randomColorDelegate:  NSObject, UITextFieldDelegate {
    
    let colors = [UIColor.blackColor(),UIColor.blueColor(),
                UIColor.brownColor(),UIColor.cyanColor(),
                UIColor.darkGrayColor(),UIColor.grayColor(),
                UIColor.greenColor(),UIColor.orangeColor(),
                UIColor.purpleColor(),UIColor.redColor()]
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        textField.textColor = self.randomColor()
        return true
    }
    
    func randomColor() -> UIColor {
        return self.colors[Int(arc4random() % UInt32(colors.count))]
    }
    
}