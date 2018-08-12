//
//  CurrencyModel.swift
//  currencies
//
//  Created by Bogdan Evsenev on 11/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import Foundation

class CurrencyModel {
    private(set) var code: String
    private(set) var rate: Double
    private(set) var isBase: Bool
    
    init(code: String, rate: Double = 1.0, isBase: Bool = false) {
        self.code = code
        self.rate = rate
        self.isBase = isBase
    }
    
    class func makeBase(code: String) -> CurrencyModel {
        return CurrencyModel(code: code, isBase: true)
    }
}
