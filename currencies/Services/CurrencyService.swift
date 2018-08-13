//
//  CurrencyService.swift
//  currencies
//
//  Created by Bogdan Evsenev on 11/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import Foundation
import Alamofire

typealias CurrencyClosure = (RatesModel) -> Void

protocol CurrencyService {
    func getRates(currency: String, completion: CurrencyClosure?)
}

class RevolutCurrencyService: CurrencyService {
    func getRates(currency: String, completion: CurrencyClosure?) {
        let params = [ParamsAPI.base : currency]
        request(endpoint(.latest), parameters: params).responseJSON(completionHandler: { response in
            guard let json = response.result.value as? [String: Any] else { return }
            guard let ratesModel = RatesModel(json: json) else { return }
            completion?(ratesModel)
        })
    }
}


