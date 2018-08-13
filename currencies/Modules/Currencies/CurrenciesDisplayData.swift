//
//  CurrenciesDisplayData.swift
//  currencies
//
//  Created by Bogdan Evsenev on 13/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import Foundation
import Viperit

// MARK: - CurrenciesDisplayData class
final class CurrenciesDisplayData: DisplayData {
    fileprivate(set) var currenciesDataSource: CurrenciesDataSource?
    
    var dataSource: UITableViewDataSource? {
        return currenciesDataSource
    }
}

// MARK: - CurrenciesDataSource API
extension CurrenciesDisplayData: CurrenciesDataSourceApi {
    func configure(tableView: UITableView) {
        currenciesDataSource = CurrenciesDataSource(tableView: tableView)
    }
    
    func update(models: [CurrencyViewModel]) {
        currenciesDataSource?.update(models: models)
    }
    
    func reorder(indexPath: IndexPath) {
        currenciesDataSource?.reorder(indexPath: indexPath)
    }
}
