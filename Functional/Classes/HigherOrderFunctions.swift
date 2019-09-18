//
//  HigherOrderFunctions.swift
//  Functional
//
//  Created by 전건우 on 2019/09/18.
//

public func run(_ block: Runnable) rethrows -> Void {
    try block()
}

public protocol HigherOrderFunctionsApplicable {}

extension HigherOrderFunctionsApplicable {
    @discardableResult
    public func also(_ block: Consumer<Self>) rethrows -> Self {
        try block(self)
        return self
    }
    
    @discardableResult
    public func `let`<R>(_ block: Function<Self, R>) rethrows -> R {
        return try block(self)
    }
}

extension NSObject: HigherOrderFunctionsApplicable {}
