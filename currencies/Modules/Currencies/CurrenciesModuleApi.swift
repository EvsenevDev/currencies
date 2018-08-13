//
//  CurrenciesModuleApi.swift
//  currencies
//
//  Created by Bogdan Evsenev on 13/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import Viperit

//MARK: - CurrenciesRouter API
protocol CurrenciesRouterApi: RouterProtocol {
}

//MARK: - CurrenciesView API
protocol CurrenciesViewApi: UserInterfaceProtocol {
    func update(viewModels: [CurrencyViewModel])
}

//MARK: - CurrenciesPresenter API
protocol CurrenciesPresenterApi: PresenterProtocol {
    func presentRates(model: RatesModel)
    func changeBase(index: Int)
    func changeValue(_ value: Double)
}

//MARK: - CurrenciesInteractor API
protocol CurrenciesInteractorApi: InteractorProtocol {
    func changeCurrency(_ currency: String)
}

//MARK: - Datasource API
protocol CurrenciesDataSourceApi {
    func configure(tableView: UITableView)
    func update(models: [CurrencyViewModel])
    func reorder(indexPath: IndexPath)
}
