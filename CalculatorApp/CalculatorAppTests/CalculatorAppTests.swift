//
//  CalculatorAppTests.swift
//  CalculatorAppTests
//
//  Created by SIMA on 29/05/2019.
//  Copyright © 2019 TJ. All rights reserved.
//

import XCTest
@testable import CalculatorApp

class CalculatorAppTests: XCTestCase {

    func test_SubstractTwoNumbers() {
        let calculator = Calculator()
        let result = calculator.substract(5,3)
        
        XCTAssertEqual(result, 2)
    }
    
    func test_AddTwoNumbers() {
        let calculator = Calculator()
        let result = calculator.add(2,3)
        
        XCTAssertEqual(result, 5)
    }

}
