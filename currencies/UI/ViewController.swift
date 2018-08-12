//
//  ViewController.swift
//  currencies
//
//  Created by Bogdan Evsenev on 10/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CurrencyListener, UITableViewDelegate {
    @IBOutlet private weak var tableView: UITableView!
    
    private var dataSource: CurrenciesDataSource!
    private var service: CurrencyService!
    var value: Double = 1
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        service = CurrencyService(listener: self)
        dataSource = CurrenciesDataSource(tableView: tableView)
        tableView.registerCell(name: CurrencyCell.nibName)
        
        tableView.dataSource = dataSource
        tableView.delegate = self
    }
    
    // MARK: - CurrencyListener
    
    func didUpdate(models: [CurrencyModel]) {
        let viewModels = models.map { [unowned self] model in
            return CurrencyViewModel(value: self.value, model: model)
        }
        dataSource.update(models: viewModels)
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        service.changeBase(currency: dataSource.viewModels[indexPath.row].code)
        guard let cell = tableView.cellForRow(at: indexPath) as? CurrencyCell else { return }
        cell.onValueChange = { [weak self] value in
            self?.value = value
            self?.updateViewModels()
        }
        dataSource.reorder(indexPath: indexPath)
    }
    
    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
        tableView.deselectRow(at: IndexPath(row: 0, section: 0), animated: false)
    }

    //MARK: - Private
    
    private func updateViewModels() {
        let viewModels = dataSource.viewModels
        for viewModel in viewModels {
            viewModel.update(value: value)
        }
        dataSource.update(models: viewModels)
    }
}

