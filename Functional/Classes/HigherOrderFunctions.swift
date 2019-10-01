//
//  HigherOrderFunctions.swift
//  Functional
//
//  Created by Geonu Jeon on 2019/09/18.
//

public func run(_ block: Runnable) rethrows -> Void {
    try block()
}

extension Fx {
    @discardableResult
    public func also(_ block: Consumer<Wrapped>) rethrows -> Wrapped {
        try block(self.value)
        return self.value
    }
    
    @discardableResult
    public func `let`<R>(_ block: Function<Wrapped, R>) rethrows -> R {
        return try block(self.value)
    }
}
