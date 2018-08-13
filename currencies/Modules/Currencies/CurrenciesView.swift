//
//  CurrenciesView.swift
//  currencies
//
//  Created by Bogdan Evsenev on 13/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit
import Viperit

//MARK: CurrenciesView Class
class CurrenciesView: UserInterface, UITableViewDelegate {
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayData.configure(tableView: tableView)
        
        tableView.dataSource = displayData.dataSource
        tableView.delegate = self
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        presenter.changeBase(index: indexPath.row)
        guard let cell = tableView.cellForRow(at: indexPath) as? CurrencyCell else { return }
        
        cell.onValueChange = { [weak self] value in
            self?.presenter.changeValue(value)
        }
        displayData.reorder(indexPath: indexPath)
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        tableView.deselectRow(at: IndexPath(row: 0, section: 0), animated: false)
    }
}

//MARK: - CurrenciesView API
extension CurrenciesView: CurrenciesViewApi {
    func update(viewModels: [CurrencyViewModel]) {
        displayData.update(models: viewModels)
    }
    
}

// MARK: - CurrenciesView Viper Components API
private extension CurrenciesView {
    var presenter: CurrenciesPresenterApi {
        return _presenter as! CurrenciesPresenterApi
    }
    var displayData: CurrenciesDisplayData {
        return _displayData as! CurrenciesDisplayData
    }
}
