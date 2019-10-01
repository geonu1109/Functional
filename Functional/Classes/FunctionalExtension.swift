//
//  FunctionalExtension.swift
//  Functional
//
//  Created by Geonu Jeon on 2019/10/01.
//

public typealias Fx = FunctionalExtension
public typealias FxCompatible = FunctionalExtensionCompatible

public struct FunctionalExtension<Wrapped> {
    public let value: Wrapped
    
    public init(_ value: Wrapped) {
        self.value = value
    }
}

public protocol FunctionalExtensionCompatible {}

extension FunctionalExtensionCompatible {
    public var fx: FunctionalExtension<Self> {
        return FunctionalExtension(self)
    }
}

extension NSObject: FunctionalExtensionCompatible {}
