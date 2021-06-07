//
//  SimpleCalculatorUITests.swift
//  SimpleCalculatorUITests
//
//  Created by Anton Smirnov on 07.06.2021.
//  Copyright © 2021 fpiruzi. All rights reserved.
//

import XCTest

class SimpleCalculatorUITests: XCTestCase {
    
    override func setUpWithError() throws {
        continueAfterFailure = false
    }
    
    func testAddNumbers() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["2"].tap()
        app.buttons["+"].tap()
        app.buttons["3"].tap()
        app.buttons["="].tap()
        let calculateResult = Double(app.staticTexts.firstMatch.label)
        XCTAssertEqual(5.0, calculateResult,"Result should be equal to 5")
    }
    
    func testSubNumbers() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["5"].tap()
        app.buttons["-"].tap()
        app.buttons["3"].tap()
        app.buttons["="].tap()
        let calculateResult = Double(app.staticTexts.firstMatch.label)
        XCTAssertEqual(2.0, calculateResult,"Result should be equal to 2")
    }
    
    func testMultiplyNumbers() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["5"].tap()
        app.buttons["x"].tap()
        app.buttons["3"].tap()
        app.buttons["="].tap()
        let calculateResult = Double(app.staticTexts.firstMatch.label)
        XCTAssertEqual(15.0, calculateResult,"Result should be equal to 15")
    }
    
    func testDivideNumbers() throws {
        let app = XCUIApplication()
        app.launch()
        
        app.buttons["8"].tap()
        app.buttons["/"].tap()
        app.buttons["2"].tap()
        app.buttons["="].tap()
        let calculateResult = Double(app.staticTexts.firstMatch.label)
        XCTAssertEqual(4.0, calculateResult,"Result should be equal to 4")
    }
}
