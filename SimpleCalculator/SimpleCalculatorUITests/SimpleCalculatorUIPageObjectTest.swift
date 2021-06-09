//
//  SimpleCalculatorUIPageObjectTest.swift
//  SimpleCalculatorUITests
//
//  Created by Anton Smirnov on 09.06.2021.
//  Copyright © 2021 fpiruzi. All rights reserved.
//

import XCTest

class SimpleCalculatorUIPageObjectTest: BaseClass {
    private var calculator: Calculator? = nil
    
    private let randomNumber = Int.random(in: 1..<9)
    
    func testSimpleAddPageObjectExample() throws {
        let firstNumber = Double(randomNumber)
        let secondNumber = Double(randomNumber)
        
        calculator = Calculator()
            .enter(number: firstNumber).addition(number: secondNumber)
        
        XCTAssertEqual(firstNumber + secondNumber, calculator?.numberOnScreen)
    }
    
    func testSimpleDivPageObjectExample() throws {
        let firstNumber = Double(randomNumber)
        let secondNumber = Double(randomNumber)
        
        calculator = Calculator()
            .enter(number: firstNumber).division(number: secondNumber)
        
        XCTAssertEqual(firstNumber / secondNumber, calculator?.numberOnScreen)
    }
    
    func testSimpleMultyPageObjectExample() throws {
        let firstNumber = Double(randomNumber)
        let secondNumber = Double(randomNumber)
        
        calculator = Calculator()
            .enter(number: firstNumber).multiPly(number: secondNumber)
        
        XCTAssertEqual(firstNumber * secondNumber, calculator?.numberOnScreen)
    }
    
    func testSimpleSubPageObjectExample() throws {
        let firstNumber = Double(randomNumber)
        let secondNumber = Double(randomNumber)
        
        calculator = Calculator()
            .enter(number: firstNumber).subtraction(number: secondNumber)
        
        XCTAssertEqual(firstNumber - secondNumber, calculator?.numberOnScreen)
    }
}
