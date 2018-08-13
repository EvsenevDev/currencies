//
//  MatchableExtensions.swift
//  currenciesTests
//
//  Created by Bogdan Evsenev on 14/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import Foundation
import Cuckoo
@testable import currencies

extension CurrencyViewModel: Matchable {
    public var matcher: ParameterMatcher<CurrencyViewModel> {
        get {
            return ParameterMatcher(matchesFunction: { self.code == $0.code } )
        }
    }
}

extension Array: Matchable where Element: CurrencyViewModel {
    public typealias MatchedType = [CurrencyViewModel]
    
    public var matcher: ParameterMatcher<[CurrencyViewModel]> {
        get {
            return ParameterMatcher(matchesFunction: { viewModels in
                if viewModels.count != self.count { return false }
                for i in 0..<viewModels.count {
                    if !viewModels[i].matcher.matches(self[i]) {
                        return false
                    }
                }
                return true
            })
        }
    }
}
