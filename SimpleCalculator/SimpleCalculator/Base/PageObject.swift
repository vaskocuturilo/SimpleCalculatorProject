//
//  PageObject.swift
//  SimpleCalculatorUITests
//
//  Created by Anton Smirnov on 09.06.2021.
//  Copyright © 2021 fpiruzi. All rights reserved.
//

import XCTest

protocol PageObject {
    
}

extension PageObject {
    
    var app: XCUIApplication {
        return XCUIApplication()
    }
    
    func findAllElements(element: XCUIElement.ElementType) -> XCUIElementQuery {
        return app.descendants(matching: element)
    }
}


