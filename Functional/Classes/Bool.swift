//
//  Bool.swift
//  Functional
//
//  Created by Geonu Jeon on 2019/10/01.
//

public func not(_ value: Bool) -> Bool {
    return !value
}

public func and(_ lhs: Bool, _ rhs: Bool) -> Bool {
    return lhs && rhs
}

public func or(_ lhs: Bool, _ rhs: Bool) -> Bool {
    return lhs || rhs
}

public func xor(_ lhs: Bool, _ rhs: Bool) -> Bool {
    return lhs != rhs
}

extension Bool {
    public var not: Bool {
        return !self
    }
    
    public func and(_ value: Bool) -> Bool {
        return self && value
    }
    
    public func or(_ value: Bool) -> Bool {
        return self || value
    }
    
    public func xor(_ value: Bool) -> Bool {
        return self != value
    }
}
