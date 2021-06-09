//
//  CalculatorScreen.swift
//  SimpleCalculatorUITests
//
//  Created by Anton Smirnov on 09.06.2021.
//  Copyright © 2021 fpiruzi. All rights reserved.
//

import XCTest

class Calculator: PageObject {
    //buttons
    private lazy var addButton = app.buttons["+"].firstMatch
    private lazy var multyButton = app.buttons["x"].firstMatch
    private lazy var subButton = app.buttons["-"].firstMatch
    private lazy var divButton = app.buttons["/"].firstMatch
    private lazy var equalButton = app.buttons["="].firstMatch
    
    //pattern for search elements
    private lazy var result = findAllElements(element: .staticText).firstMatch
    private lazy var buttons = findAllElements(element: .button)
    
    var numberOnScreen: Double? {
        return Double(result.label)
    }
    
    func enter(number: Double) -> Calculator {
        inputNumber(number: number)
        return self
    }
    
    func addition(number: Double) -> Calculator {
        return calculate(number: number, operationButton: addButton)
    }
    
    func division(number: Double) -> Calculator {
        return calculate(number: number, operationButton: divButton)
    }
    
    func multiPly(number: Double) -> Calculator {
        return calculate(number: number, operationButton: multyButton)
    }
    
    func subtraction(number: Double) -> Calculator {
        return calculate(number: number, operationButton: subButton)
    }
    
    private func calculate(number: Double, operationButton: XCUIElement) -> Calculator {
        operationButton.tap()
        inputNumber(number: number)
        equalButton.tap()
        return self
    }
    
    private func inputNumber(number: Double) {
        for ch in String(number) {
            buttons[String(ch)].tap()
        }
    }
}

