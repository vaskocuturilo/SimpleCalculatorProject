//
//  MathCalculator.swift
//  SimpleCalculator
//
//  Created by Anton Smirnov on 07.06.2021.
//

import Foundation
import Expression

class MathCalculator {
    
    static let sharedInstance = MathCalculator()
    
    func performCalc(expression: String)-> Double?{
        let exp = Expression(expression)
        do {
            return try exp.evaluate()
        } catch {
            print("Error: \(error)")
            return nil
        }
    }
}
