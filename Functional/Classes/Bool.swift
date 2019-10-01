//
//  Bool.swift
//  Functional
//
//  Created by Geonu Jeon on 2019/10/01.
//

extension Bool {
    public var not: Bool {
        return !self
    }

    public static func not(_ value: Bool) -> Bool {
        return value.not
    }
    
    public static func and(_ lhs: Bool, _ rhs: Bool) -> Bool {
        return lhs.and(rhs)
    }

    public static func or(_ lhs: Bool, _ rhs: Bool) -> Bool {
        return lhs.or(rhs)
    }

    public static func xor(_ lhs: Bool, _ rhs: Bool) -> Bool {
        return lhs.xor(rhs)
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
