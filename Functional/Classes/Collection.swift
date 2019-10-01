//
//  Collection.swift
//  Functional
//
//  Created by 전건우 on 2019/10/01.
//

public func isEmpty<T: Collection>(_ value: T) -> Bool {
    return value.isEmpty
}

public func count<T: Collection>(_ value: T) -> Int {
    return value.count
}
