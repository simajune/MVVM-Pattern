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

    private var calculator: Calculator!
    
    override func setUp() {
        super.setUp()
        self.calculator = Calculator()
    }
    
    func test_SubstractTwoNumbers() {
        let result = self.calculator.substract(5,3)
        
        XCTAssertEqual(result, 2)
    }
    
    func test_AddTwoNumbers() {
        let result = self.calculator.add(2,3)
        
        XCTAssertEqual(result, 5)
    }
    
    override func tearDown() {
        super.tearDown()
    }

}
