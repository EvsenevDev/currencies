//
//  Global.swift
//  currencies
//
//  Created by Bogdan Evsenev on 13/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import Foundation

fileprivate var _separator: String?
var decimalSeparator: String? {
    if _separator == nil {
        let lang = Locale.preferredLanguages.first!
        let locale = Locale(identifier: lang)
        _separator = locale.decimalSeparator
    }
    return _separator
}

fileprivate var _formatter: NumberFormatter?
var currencyFormatter: NumberFormatter {
    if _formatter == nil {
        _formatter = NumberFormatter()
        _formatter?.decimalSeparator = decimalSeparator
        _formatter?.minimumFractionDigits = 2
        _formatter?.maximumFractionDigits = 4
        _formatter?.minimumIntegerDigits = 1
    }
    return _formatter!
}
