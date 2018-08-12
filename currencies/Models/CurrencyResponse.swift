//
//  CurrencyResponse.swift
//  currencies
//
//  Created by Bogdan Evsenev on 11/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import Foundation

fileprivate let BASE_KEY = "base"
fileprivate let RATES_KEY = "rates"

class CurrencyResponse {
    private(set) var base: String
    private(set) var models: [CurrencyModel]
    
    init?(json: [String: Any]) {
        guard let base = json[BASE_KEY] as? String else { return nil }
        self.base = base
        var models = [CurrencyModel.makeBase(code: base)]
        guard let rates = json[RATES_KEY] as? [String: Double] else { return nil }
        for (code, rate) in rates {
            let model = CurrencyModel(code: code, rate: rate, isBase: false)
            models.append(model)
        }
        self.models = models
    }
    
}
