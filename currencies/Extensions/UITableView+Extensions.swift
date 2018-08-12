//
//  UITableView+Extensions.swift
//  currencies
//
//  Created by Bogdan Evsenev on 10/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import UIKit

extension UITableView {
    
    func registerCell(name: String) {
        let nib = UINib(nibName: name, bundle: nil)
        register(nib, forCellReuseIdentifier: name)
    }
    
}
