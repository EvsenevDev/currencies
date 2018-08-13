//
//  ModelsTests.swift
//  ModelsTests
//
//  Created by Bogdan Evsenev on 10/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import XCTest
@testable import currencies

let ratesJson: [String: Any] = ["base" : "EUR", "rates" : ["AUD":1.5659,"BGN":1.9544,"BRL":4.4522,"CAD":1.4985]]

class ModelsTests: XCTestCase {
    
    func testRatesModelInit() {
        let nilModel = RatesModel(json: [:])
        XCTAssertNil(nilModel)
        
        let model = RatesModel(json: ratesJson)
        XCTAssertNotNil(model)
    }
    
    func testRatesModelParse() {
        let EUR = "EUR"
        let AUD = "AUD"
        
        let model = RatesModel(json: ratesJson)!
        
        XCTAssertEqual(model.base, EUR)
        XCTAssertEqual(model.currencies.count, 5)
        
        let baseCurrency = model.currencies.first!
        XCTAssertTrue(baseCurrency.isBase)
        XCTAssertEqual(baseCurrency.code, EUR)
        XCTAssertEqual(baseCurrency.rate, 1)
        
        let cad = model.currencies.last!
        XCTAssertFalse(cad.isBase)
        XCTAssertEqual(cad.code, AUD)
        XCTAssertEqual(cad.rate, 1.5659)
    }
    
    //MARK: - ViewModels
    
    func testCurrencyViewModel() {
        let RUB = "RUB"
        
        let currency = CurrencyModel(code: RUB, rate: 1)
        let viewModel = CurrencyViewModel(value: 100, model: currency)
        
        XCTAssertEqual(viewModel.code, RUB)
        XCTAssertEqual(viewModel.code, currency.code)
        
        let valueString = currencyFormatter.string(from: NSNumber(value: 100))!
        XCTAssertEqual(valueString, viewModel.value)
    }
    
}
