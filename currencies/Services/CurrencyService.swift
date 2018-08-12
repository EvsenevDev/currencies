//
//  CurrencyService.swift
//  currencies
//
//  Created by Bogdan Evsenev on 11/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import Foundation
import Alamofire

protocol CurrencyListener: class {
    func didUpdate(models: [CurrencyModel])
}

class CurrencyService {
    private var currency = "USD"
    private var timer: Timer?
    
    weak var listener: CurrencyListener?
    
    init(listener: CurrencyListener? = nil) {
        self.listener = listener
        updateTimer()
    }
    
    func changeBase(currency: String) {
        self.currency = currency
        getCurrencies()
    }
    
    private func updateTimer() {
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [weak self] _ in
            self?.getCurrencies()
        })
    }
    
    private func getCurrencies() {
        let params = [ParamsAPI.base : currency]
        request(endpoint(.latest), parameters: params).responseJSON(completionHandler: { [weak self] response in
            guard let json = response.result.value as? [String: Any] else { return }
            if let currencies = CurrencyResponse(json: json), currencies.base == self?.currency {
                self?.listener?.didUpdate(models: currencies.models)
            }
        })
    }
    
    deinit {
        timer?.invalidate()
    }
}


