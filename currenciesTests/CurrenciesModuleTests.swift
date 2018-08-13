//
//  CurrenciesModuleTests.swift
//  currenciesTests
//
//  Created by Bogdan Evsenev on 14/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import XCTest
import Cuckoo
import Viperit
@testable import currencies

class CurrenciesModuleTests: XCTestCase {
    
    var mockPresenter: MockCurrenciesPresenterApi!
    var mockInteractor: MockCurrenciesInteractorApi!
    var mockView: MockCurrenciesViewApi!
    let model = RatesModel(json: ratesJson)!
    let EUR = "EUR"
    
    override func setUp() {
        super.setUp()
        mockPresenter = MockCurrenciesPresenterApi()
        mockInteractor = MockCurrenciesInteractorApi()
        mockView = MockCurrenciesViewApi()
        configureStubs()
    }
    
    func viewModels() -> [CurrencyViewModel] {
        return model.currencies.map({ CurrencyViewModel(value: 1 * $0.rate, model: $0) })
    }
    
    func configureStubs() {
        stub(mockPresenter) { mock in
            mock.changeBase(index: 0).thenDoNothing()
            mock.changeValue(0).thenDoNothing()
        }
        
        stub(mockInteractor) { mock in
            mock.changeCurrency(EUR).thenDoNothing()
        }
        
        stub(mockView) { mock in
            mock.update(viewModels: viewModels()).thenDoNothing()
        }
    }
    
    func testPresenterToInteractor() {
        let presenter = CurrenciesPresenter()
        
        presenter._interactor = mockInteractor
        presenter._view = mockView
        
        presenter.changeBase(index: 0)
        verify(mockInteractor, times(0)).changeCurrency(EUR)
        
        presenter.presentRates(model: model)
        presenter.changeBase(index: 0)
        verify(mockInteractor, times(1)).changeCurrency(EUR)
    }
    
    func testPresenterToView() {
        let presenter = CurrenciesPresenter()
        presenter._view = mockView
        
        presenter.presentRates(model: model)
        presenter.changeValue(1)
        
        verify(mockView, times(2)).update(viewModels: viewModels())
    }
}
