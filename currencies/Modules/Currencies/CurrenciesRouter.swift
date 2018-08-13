//
//  CurrenciesRouter.swift
//  currencies
//
//  Created by Bogdan Evsenev on 13/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import Foundation
import Viperit

// MARK: - CurrenciesRouter class
final class CurrenciesRouter: Router {
    
}

// MARK: - CurrenciesRouter API
extension CurrenciesRouter: CurrenciesRouterApi {
}

// MARK: - Currencies Viper Components
private extension CurrenciesRouter {
    var presenter: CurrenciesPresenterApi {
        return _presenter as! CurrenciesPresenterApi
    }
}
