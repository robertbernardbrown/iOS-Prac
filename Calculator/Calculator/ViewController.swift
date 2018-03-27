//
//  ViewController.swift
//  Calculator
//
//  Created by Bob Brown on 3/26/18.
//  Copyright © 2018 Bob Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var display: UILabel!
    
    var userIsTyping = false
    
    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if userIsTyping {
            let textInDisplay = display.text!
            display.text = textInDisplay + digit
        } else {
            display.text = digit
            userIsTyping = true
        }
    }
    
    var displayValue: Double {
        get{
            return Double(display.text!)!
        }
        set{
            display.text = String(newValue)
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsTyping = false
        if let mathSymbol = sender.currentTitle {
            switch mathSymbol {
            case "π":
                displayValue = Double.pi
            case "√":
                displayValue = sqrt(displayValue)
            default:
                break
            }
        }
    }
    
}

