//
//  CalculatorModel.swift
//  Calculator
//
//  Created by hw on 10/08/2019.
//  Copyright © 2019 hwj. All rights reserved.
//

import Foundation

class CalculatorModel {
    private var accumulator: Double = 0.0
    var result: Double {
        get{
            return accumulator
        }
    }
    
    func setOperand(operand: Double){
        accumulator = operand
    }
    
    func performOperation(symbol: String){
        switch symbol {
        case "π" : accumulator = .pi
        case "√": accumulator = sqrt(accumulator)
        default :
            break
        }
    }
   
    init(){}
    
}
