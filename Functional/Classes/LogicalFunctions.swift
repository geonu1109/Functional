//
//  LogicalFunctions.swift
//  Functional
//
//  Created by Geonu Jeon on 2019/09/19.
//

public func and(_ lhs: Bool, _ rhs: Bool) -> Bool {
    return lhs && rhs
}

public func or(_ lhs: Bool, _ rhs: Bool) -> Bool {
    return lhs || rhs
}

public func not(_ value: Bool) -> Bool {
    return !value
}

public func xor(_ lhs: Bool, _ rhs: Bool) -> Bool {
    return lhs != rhs
}
