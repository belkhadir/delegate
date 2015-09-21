//
//  ViewController.swift
//  delegate
//
//  Created by Anas Belkhadir on 20/09/2015.
//  Copyright © 2015 Anas Belkhadir. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var `switch`: UISwitch!
    
    var textField2Delegate = randomColorDelegate()
    var textField1Delegate = CashDelegate()
    override func viewDidLoad() {
        super.viewDidLoad()
        textField2.delegate = textField2Delegate
        textField3.delegate = self
        textField1.delegate = textField1Delegate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        return true //self.`switch`.on
    }
    func textFieldShouldEndEditing(textField: UITextField) -> Bool {
        return false
    }
}

