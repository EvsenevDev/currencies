//
//  CurrenciesDataSource.swift
//  currencies
//
//  Created by Bogdan Evsenev on 10/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

class CurrenciesDataSource: NSObject, UITableViewDataSource {
    private(set) var viewModels: [CurrencyViewModel]
    private weak var tableView: UITableView!
    
    init(tableView: UITableView, viewModels: [CurrencyViewModel] = []) {
        self.viewModels = viewModels
        self.tableView = tableView
    }
    
    // MARK: - Interface
    
    func update(models: [CurrencyViewModel]) {
        self.viewModels = models
        var reloadRows = tableView.indexPathsForVisibleRows ?? []
        reloadRows = reloadRows.filter { $0.row != 0 }
        if !reloadRows.isEmpty {
            tableView.reloadRows(at: reloadRows, with: .none)
        } else {
            tableView.reloadData()
        }
    }
    
    func reorder(indexPath: IndexPath) {
        var reordered = viewModels
        let selectedModel = reordered.remove(at: indexPath.row)
        reordered.insert(selectedModel, at: 0)
        viewModels = reordered
        let firstIndexPath = IndexPath(row: 0, section: indexPath.section)
        tableView.moveRow(at: indexPath, to: firstIndexPath)
        tableView.scrollToRow(at: firstIndexPath, at: .top, animated: false)
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CurrencyCell.nibName) as! CurrencyCell
        cell.fill(viewModel: viewModels[indexPath.row])
        return cell
    }
    
    
}