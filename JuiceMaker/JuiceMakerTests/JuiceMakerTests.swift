//
//  JuiceMakerTests.swift
//  JuiceMakerTests
//
//  Created by Seungjin Baek on 2021/07/09.
//

import XCTest
@testable import JuiceMaker

class JuiceMakerTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_FruitStockManager() {
        FruitStockManager.fruitStocks.forEach { print($0.fruitType().description) }
    }

}
