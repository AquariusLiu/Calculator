//
//  ViewController.swift
//  Calculator
//
//  Created by Liu XiangYu on 15/5/2.
//  Copyright (c) 2015年 Liu XiangYu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var display: UILabel!
    
    var userIsInTheMiddleOfTypingANumber: Bool = false
    
    @IBAction func appendDigit(sender: UIButton) {
        let digit = sender.currentTitle!

        if(userIsInTheMiddleOfTypingANumber) {
            display.text = display.text! + digit
        } else {
            userIsInTheMiddleOfTypingANumber = true
            display.text = digit
        }
    }
}

