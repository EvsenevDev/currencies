//
//  CurrencyViewModel.swift
//  currencies
//
//  Created by Bogdan Evsenev on 11/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import Foundation

class CurrencyViewModel {
    private(set) var value = "0"
    private(set) var code: String
    private(set) var rawRate: Double
    
    init(value: Double, model: CurrencyModel) {
        self.code = model.code
        self.rawRate = model.rate
        update(value: value)
    }
    
    func update(value: Double) {
        self.value = currencyFormatter.string(from: NSNumber(value: value * rawRate)) ?? self.value
    }
}


