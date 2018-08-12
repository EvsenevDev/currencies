//
//  API.swift
//  currencies
//
//  Created by Bogdan Evsenev on 12/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import Foundation

fileprivate let BASE_URL = "https://revolut.duckdns.org/"
fileprivate let FLAG_URL = "https://raw.githubusercontent.com/transferwise/currency-flags/master/src/flags/"

enum MethodAPI: String {
    case latest = "latest"
}

struct ParamsAPI {
    static let base = "base"
}

func endpoint(_ method: MethodAPI) -> String {
    return BASE_URL + method.rawValue
}

func flagURL(currency: String) -> String {
    return FLAG_URL + currency.lowercased() + ".png"
}
