//
//  ViewController.swift
//  Calculator
//
//  Created by hw on 09/08/2019.
//  Copyright © 2019 hwj. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet private weak var display: UILabel!
    private var userIsInTheMiddleOfTyping: Bool = false
    
    private var model = CalculatorModel()
    
    @IBAction private func touchDigit(_ sender: UIButton){
        let digit = sender.currentTitle!
        
        if userIsInTheMiddleOfTyping {
            let textCurrentlyDisplay = display.text!
            display.text = textCurrentlyDisplay + digit
        } else{
            display.text = digit
        }
        userIsInTheMiddleOfTyping = true
    }
    
    private var displayValue: Double {
        get{
            return Double(display.text!)!
        }
        set{
            display.text = String(newValue)
        }
    }
    @IBAction private func performOperation(_ sender: UIButton) {
        if userIsInTheMiddleOfTyping{
            model.setOperand(operand: displayValue)
            userIsInTheMiddleOfTyping = false
        }
        
        if let mathSymbol = sender.currentTitle{
            model.performOperation(symbol: mathSymbol)
        }
        displayValue = model.result
    }
    
}

