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

public func curry<T1, T2, R>(_ function: @escaping (T1, T2) throws -> R) -> (T1) -> (T2) throws -> R {
    return { (arg1) in
        return { (arg2) in
            return try function(arg1, arg2)
        }
    }
}

public func curry<T1, T2, T3, R>(_ function: @escaping (T1, T2, T3) throws -> R) -> (T1) -> (T2) -> (T3) throws -> R {
    return { (arg1) in
        return { (arg2) in
            return { (arg3) in
                return try function(arg1, arg2, arg3)
            }
        }
    }
}

public func curry<T1, T2, T3, T4, R>(_ function: @escaping (T1, T2, T3, T4) throws -> R) -> (T1) -> (T2) -> (T3) -> (T4) throws -> R {
    return { (arg1) in
        return { (arg2) in
            return { (arg3) in
                return { (arg4) in
                    return try function(arg1, arg2, arg3, arg4)
                }
            }
        }
    }
}

public func compose<T, U, R>(_ f: @escaping Function<U, R>, _ g: @escaping Function<T, U>) -> Function<T, R> {
    return { (arg) in
        return try f(g(arg))
    }
}
