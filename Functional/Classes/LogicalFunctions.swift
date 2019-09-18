//
//  LogicalFunctions.swift
//  Functional
//
//  Created by 전건우 on 2019/09/19.
//

func and(_ lhs: Bool, _ rhs: Bool) -> Bool {
    return lhs && rhs
}

func or(_ lhs: Bool, _ rhs: Bool) -> Bool {
    return lhs || rhs
}

func not(_ value: Bool) -> Bool {
    return !value
}

func xor(_ lhs: Bool, _ rhs: Bool) -> Bool {
    return lhs != rhs
}
