//
//  CurrenciesPresenter.swift
//  currencies
//
//  Created by Bogdan Evsenev on 13/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import Foundation
import Viperit

// MARK: - CurrenciesPresenter Class
final class CurrenciesPresenter: Presenter {
    private var value: Double = 1
    private var ratesModel: RatesModel?
    
    fileprivate func updateView() {
        guard let ratesModel = self.ratesModel else { return }
        let viewModels = ratesModel.currencies.map { [unowned self] in
            CurrencyViewModel(value: self.value * $0.rate, model: $0)
        }
        view.update(viewModels: viewModels)
    }
}

// MARK: - CurrenciesPresenter API
extension CurrenciesPresenter: CurrenciesPresenterApi {
    
    func presentRates(model: RatesModel) {
        ratesModel = model
        updateView()
    }
    
    func changeBase(index: Int) {
        if let model = ratesModel {
            interactor.changeCurrency(model.currencies[index].code)
        }
    }
    
    func changeValue(_ value: Double) {
        self.value = value
        updateView()
    }
    
}

// MARK: - Currencies Viper Components
private extension CurrenciesPresenter {
    var view: CurrenciesViewApi {
        return _view as! CurrenciesViewApi
    }
    var interactor: CurrenciesInteractorApi {
        return _interactor as! CurrenciesInteractorApi
    }
    var router: CurrenciesRouterApi {
        return _router as! CurrenciesRouterApi
    }
}
