// MARK: - Mocks generated from file: currencies/Modules/Currencies/CurrenciesModuleApi.swift
//
//  CurrenciesModuleApi.swift
//  currencies
//
//  Created by Bogdan Evsenev on 13/08/2018.
//  Copyright © 2018 test. All rights reserved.
//

import Cuckoo
@testable import currencies

import Viperit

class MockCurrenciesRouterApi: CurrenciesRouterApi, Cuckoo.ProtocolMock {
    typealias MocksType = CurrenciesRouterApi
    typealias Stubbing = __StubbingProxy_CurrenciesRouterApi
    typealias Verification = __VerificationProxy_CurrenciesRouterApi
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    

	struct __StubbingProxy_CurrenciesRouterApi: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	}

	struct __VerificationProxy_CurrenciesRouterApi: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	}

}

 class CurrenciesRouterApiStub: CurrenciesRouterApi {
    

    

    
}


class MockCurrenciesViewApi: CurrenciesViewApi, Cuckoo.ProtocolMock {
    typealias MocksType = CurrenciesViewApi
    typealias Stubbing = __StubbingProxy_CurrenciesViewApi
    typealias Verification = __VerificationProxy_CurrenciesViewApi
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "update", "returnSignature": "", "fullyQualifiedName": "update(viewModels: [CurrencyViewModel])", "parameterSignature": "viewModels: [CurrencyViewModel]", "parameterSignatureWithoutNames": "viewModels: [CurrencyViewModel]", "inputTypes": "[CurrencyViewModel]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "viewModels", "call": "viewModels: viewModels", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("viewModels"), name: "viewModels", type: "[CurrencyViewModel]", range: CountableRange(343..<374), nameRange: CountableRange(343..<353))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func update(viewModels: [CurrencyViewModel])  {
        
            return cuckoo_manager.call("update(viewModels: [CurrencyViewModel])",
                parameters: (viewModels),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_CurrenciesViewApi: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func update<M1: Cuckoo.Matchable>(viewModels: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([CurrencyViewModel])> where M1.MatchedType == [CurrencyViewModel] {
	        let matchers: [Cuckoo.ParameterMatcher<([CurrencyViewModel])>] = [wrap(matchable: viewModels) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrenciesViewApi.self, method: "update(viewModels: [CurrencyViewModel])", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_CurrenciesViewApi: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func update<M1: Cuckoo.Matchable>(viewModels: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == [CurrencyViewModel] {
	        let matchers: [Cuckoo.ParameterMatcher<([CurrencyViewModel])>] = [wrap(matchable: viewModels) { $0 }]
	        return cuckoo_manager.verify("update(viewModels: [CurrencyViewModel])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class CurrenciesViewApiStub: CurrenciesViewApi {
    

    

    
     func update(viewModels: [CurrencyViewModel])  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


class MockCurrenciesPresenterApi: CurrenciesPresenterApi, Cuckoo.ProtocolMock {
    typealias MocksType = CurrenciesPresenterApi
    typealias Stubbing = __StubbingProxy_CurrenciesPresenterApi
    typealias Verification = __VerificationProxy_CurrenciesPresenterApi
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "presentRates", "returnSignature": "", "fullyQualifiedName": "presentRates(model: RatesModel)", "parameterSignature": "model: RatesModel", "parameterSignatureWithoutNames": "model: RatesModel", "inputTypes": "RatesModel", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "model", "call": "model: model", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("model"), name: "model", type: "RatesModel", range: CountableRange(488..<505), nameRange: CountableRange(488..<493))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func presentRates(model: RatesModel)  {
        
            return cuckoo_manager.call("presentRates(model: RatesModel)",
                parameters: (model),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "changeBase", "returnSignature": "", "fullyQualifiedName": "changeBase(index: Int)", "parameterSignature": "index: Int", "parameterSignatureWithoutNames": "index: Int", "inputTypes": "Int", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "index", "call": "index: index", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("index"), name: "index", type: "Int", range: CountableRange(527..<537), nameRange: CountableRange(527..<532))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func changeBase(index: Int)  {
        
            return cuckoo_manager.call("changeBase(index: Int)",
                parameters: (index),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "changeValue", "returnSignature": "", "fullyQualifiedName": "changeValue(_: Double)", "parameterSignature": "_ value: Double", "parameterSignatureWithoutNames": "value: Double", "inputTypes": "Double", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "value", "call": "value", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "value", type: "Double", range: CountableRange(560..<575), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func changeValue(_ value: Double)  {
        
            return cuckoo_manager.call("changeValue(_: Double)",
                parameters: (value),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_CurrenciesPresenterApi: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func presentRates<M1: Cuckoo.Matchable>(model: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(RatesModel)> where M1.MatchedType == RatesModel {
	        let matchers: [Cuckoo.ParameterMatcher<(RatesModel)>] = [wrap(matchable: model) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrenciesPresenterApi.self, method: "presentRates(model: RatesModel)", parameterMatchers: matchers))
	    }
	    
	    func changeBase<M1: Cuckoo.Matchable>(index: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Int)> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrenciesPresenterApi.self, method: "changeBase(index: Int)", parameterMatchers: matchers))
	    }
	    
	    func changeValue<M1: Cuckoo.Matchable>(_ value: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(Double)> where M1.MatchedType == Double {
	        let matchers: [Cuckoo.ParameterMatcher<(Double)>] = [wrap(matchable: value) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrenciesPresenterApi.self, method: "changeValue(_: Double)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_CurrenciesPresenterApi: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func presentRates<M1: Cuckoo.Matchable>(model: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == RatesModel {
	        let matchers: [Cuckoo.ParameterMatcher<(RatesModel)>] = [wrap(matchable: model) { $0 }]
	        return cuckoo_manager.verify("presentRates(model: RatesModel)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func changeBase<M1: Cuckoo.Matchable>(index: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Int {
	        let matchers: [Cuckoo.ParameterMatcher<(Int)>] = [wrap(matchable: index) { $0 }]
	        return cuckoo_manager.verify("changeBase(index: Int)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func changeValue<M1: Cuckoo.Matchable>(_ value: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == Double {
	        let matchers: [Cuckoo.ParameterMatcher<(Double)>] = [wrap(matchable: value) { $0 }]
	        return cuckoo_manager.verify("changeValue(_: Double)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class CurrenciesPresenterApiStub: CurrenciesPresenterApi {
    

    

    
     func presentRates(model: RatesModel)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func changeBase(index: Int)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func changeValue(_ value: Double)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


class MockCurrenciesInteractorApi: CurrenciesInteractorApi, Cuckoo.ProtocolMock {
    typealias MocksType = CurrenciesInteractorApi
    typealias Stubbing = __StubbingProxy_CurrenciesInteractorApi
    typealias Verification = __VerificationProxy_CurrenciesInteractorApi
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "changeCurrency", "returnSignature": "", "fullyQualifiedName": "changeCurrency(_: String)", "parameterSignature": "_ currency: String", "parameterSignatureWithoutNames": "currency: String", "inputTypes": "String", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "currency", "call": "currency", "parameters": [CuckooGeneratorFramework.MethodParameter(label: nil, name: "currency", type: "String", range: CountableRange(694..<712), nameRange: CountableRange(0..<0))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func changeCurrency(_ currency: String)  {
        
            return cuckoo_manager.call("changeCurrency(_: String)",
                parameters: (currency),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_CurrenciesInteractorApi: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func changeCurrency<M1: Cuckoo.Matchable>(_ currency: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(String)> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: currency) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrenciesInteractorApi.self, method: "changeCurrency(_: String)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_CurrenciesInteractorApi: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func changeCurrency<M1: Cuckoo.Matchable>(_ currency: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == String {
	        let matchers: [Cuckoo.ParameterMatcher<(String)>] = [wrap(matchable: currency) { $0 }]
	        return cuckoo_manager.verify("changeCurrency(_: String)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class CurrenciesInteractorApiStub: CurrenciesInteractorApi {
    

    

    
     func changeCurrency(_ currency: String)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}


class MockCurrenciesDataSourceApi: CurrenciesDataSourceApi, Cuckoo.ProtocolMock {
    typealias MocksType = CurrenciesDataSourceApi
    typealias Stubbing = __StubbingProxy_CurrenciesDataSourceApi
    typealias Verification = __VerificationProxy_CurrenciesDataSourceApi
    let cuckoo_manager = Cuckoo.MockManager(hasParent: false)

    

    

    
    // ["name": "configure", "returnSignature": "", "fullyQualifiedName": "configure(tableView: UITableView)", "parameterSignature": "tableView: UITableView", "parameterSignatureWithoutNames": "tableView: UITableView", "inputTypes": "UITableView", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "tableView", "call": "tableView: tableView", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("tableView"), name: "tableView", type: "UITableView", range: CountableRange(796..<818), nameRange: CountableRange(796..<805))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func configure(tableView: UITableView)  {
        
            return cuckoo_manager.call("configure(tableView: UITableView)",
                parameters: (tableView),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "update", "returnSignature": "", "fullyQualifiedName": "update(models: [CurrencyViewModel])", "parameterSignature": "models: [CurrencyViewModel]", "parameterSignatureWithoutNames": "models: [CurrencyViewModel]", "inputTypes": "[CurrencyViewModel]", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "models", "call": "models: models", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("models"), name: "models", type: "[CurrencyViewModel]", range: CountableRange(836..<863), nameRange: CountableRange(836..<842))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func update(models: [CurrencyViewModel])  {
        
            return cuckoo_manager.call("update(models: [CurrencyViewModel])",
                parameters: (models),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    
    // ["name": "reorder", "returnSignature": "", "fullyQualifiedName": "reorder(indexPath: IndexPath)", "parameterSignature": "indexPath: IndexPath", "parameterSignatureWithoutNames": "indexPath: IndexPath", "inputTypes": "IndexPath", "isThrowing": false, "isInit": false, "isOverriding": false, "hasClosureParams": false, "@type": "ProtocolMethod", "accessibility": "", "parameterNames": "indexPath", "call": "indexPath: indexPath", "parameters": [CuckooGeneratorFramework.MethodParameter(label: Optional("indexPath"), name: "indexPath", type: "IndexPath", range: CountableRange(882..<902), nameRange: CountableRange(882..<891))], "returnType": "Void", "isOptional": false, "stubFunction": "Cuckoo.ProtocolStubNoReturnFunction"]
     func reorder(indexPath: IndexPath)  {
        
            return cuckoo_manager.call("reorder(indexPath: IndexPath)",
                parameters: (indexPath),
                superclassCall:
                    
                    Cuckoo.MockManager.crashOnProtocolSuperclassCall()
                    )
        
    }
    

	struct __StubbingProxy_CurrenciesDataSourceApi: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	    init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func configure<M1: Cuckoo.Matchable>(tableView: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(UITableView)> where M1.MatchedType == UITableView {
	        let matchers: [Cuckoo.ParameterMatcher<(UITableView)>] = [wrap(matchable: tableView) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrenciesDataSourceApi.self, method: "configure(tableView: UITableView)", parameterMatchers: matchers))
	    }
	    
	    func update<M1: Cuckoo.Matchable>(models: M1) -> Cuckoo.ProtocolStubNoReturnFunction<([CurrencyViewModel])> where M1.MatchedType == [CurrencyViewModel] {
	        let matchers: [Cuckoo.ParameterMatcher<([CurrencyViewModel])>] = [wrap(matchable: models) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrenciesDataSourceApi.self, method: "update(models: [CurrencyViewModel])", parameterMatchers: matchers))
	    }
	    
	    func reorder<M1: Cuckoo.Matchable>(indexPath: M1) -> Cuckoo.ProtocolStubNoReturnFunction<(IndexPath)> where M1.MatchedType == IndexPath {
	        let matchers: [Cuckoo.ParameterMatcher<(IndexPath)>] = [wrap(matchable: indexPath) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockCurrenciesDataSourceApi.self, method: "reorder(indexPath: IndexPath)", parameterMatchers: matchers))
	    }
	    
	}

	struct __VerificationProxy_CurrenciesDataSourceApi: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	    init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func configure<M1: Cuckoo.Matchable>(tableView: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == UITableView {
	        let matchers: [Cuckoo.ParameterMatcher<(UITableView)>] = [wrap(matchable: tableView) { $0 }]
	        return cuckoo_manager.verify("configure(tableView: UITableView)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func update<M1: Cuckoo.Matchable>(models: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == [CurrencyViewModel] {
	        let matchers: [Cuckoo.ParameterMatcher<([CurrencyViewModel])>] = [wrap(matchable: models) { $0 }]
	        return cuckoo_manager.verify("update(models: [CurrencyViewModel])", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func reorder<M1: Cuckoo.Matchable>(indexPath: M1) -> Cuckoo.__DoNotUse<Void> where M1.MatchedType == IndexPath {
	        let matchers: [Cuckoo.ParameterMatcher<(IndexPath)>] = [wrap(matchable: indexPath) { $0 }]
	        return cuckoo_manager.verify("reorder(indexPath: IndexPath)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}

}

 class CurrenciesDataSourceApiStub: CurrenciesDataSourceApi {
    

    

    
     func configure(tableView: UITableView)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func update(models: [CurrencyViewModel])  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
     func reorder(indexPath: IndexPath)  {
        return DefaultValueRegistry.defaultValue(for: Void.self)
    }
    
}

