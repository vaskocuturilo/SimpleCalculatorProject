//
//  BaseClass.swift
//  SimpleCalculatorUITests
//
//  Created by Anton Smirnov on 09.06.2021.
//  Copyright © 2021 fpiruzi. All rights reserved.
//
import XCTest

class BaseClass: XCTestCase {
    private let app = XCUIApplication()
    
    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        app.terminate()
    }
}
