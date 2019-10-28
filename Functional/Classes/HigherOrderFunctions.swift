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

public func curry<T1, T2, R>(_ function: @escaping (T1, T2) -> R) -> (T1) -> (T2) -> R {
    return { (arg1) in
        return { (arg2) in
            return function(arg1, arg2)
        }
    }
}

public func curry<T1, T2, T3, R>(_ function: @escaping (T1, T2, T3) -> R) -> (T1) -> (T2) -> (T3) -> R {
    return { (arg1) in
        return { (arg2) in
            return { (arg3) in
                return function(arg1, arg2, arg3)
            }
        }
    }
}

public func uncurry<T1, T2, R>(_ curriedFunction: @escaping (T1) -> (T2) -> R) -> (T1, T2) -> R {
    return { (arg1, arg2) in
        return curriedFunction(arg1)(arg2)
    }
}

public func uncurry<T1, T2, T3, R>(_ curriedFunction: @escaping (T1) -> (T2) -> (T3) -> R) -> (T1, T2, T3) -> R {
    return { (arg1, arg2, arg3) in
        return curriedFunction(arg1)(arg2)(arg3)
    }
}

public func compose<T, U, R>(_ f: @escaping Function<U, R>, _ g: @escaping Function<T, U>) -> Function<T, R> {
    return { (arg) in
        return try f(g(arg))
    }
}

public func * <T, U, R>(lhs: @escaping Function<U, R>, rhs: @escaping Function<T, U>) -> Function<T, R> {
    return compose(lhs, rhs)
}

public func flip<T1, T2, R>(_ function: @escaping (T1) -> (T2) -> R) -> (T2) -> (T1) -> R {
    return { (arg1) in
        return { (arg2) in
            return function(arg2)(arg1)
        }
    }
}
