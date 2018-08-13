//
//  CurrenciesInteractor.swift
//  currencies
//
//  Created by Bogdan Evsenev on 13/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import Foundation
import Viperit

// MARK: - CurrenciesInteractor Class
final class CurrenciesInteractor: Interactor {
    fileprivate var currency = "USD"
    fileprivate let service: CurrencyService = RevolutCurrencyService()
    
    private var timer: Timer?
    
    required init() {
        super.init()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true, block: { [weak self] _ in
            self?.updateCurrencies()
        })
    }
    
    func updateCurrencies() {
        service.getRates(currency: currency, completion: { [weak self] rates in
            guard let base = self?.currency, base == rates.base else { return }
            self?.presenter.presentRates(model: rates)
        })
    }
    
    deinit {
        timer?.invalidate()
    }
}

// MARK: - CurrenciesInteractor API
extension CurrenciesInteractor: CurrenciesInteractorApi {
    func changeCurrency(_ currency: String) {
        self.currency = currency
        updateCurrencies()
    }
}

// MARK: - Interactor Viper Components Api
private extension CurrenciesInteractor {
    var presenter: CurrenciesPresenterApi {
        return _presenter as! CurrenciesPresenterApi
    }
}
