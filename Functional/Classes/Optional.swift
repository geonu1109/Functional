//
//  Optional.swift
//  Functional
//
//  Created by Geonu Jeon on 2019/09/18.
//

public func isPresent<Wrapped>(_ value: Optional<Wrapped>) -> Bool {
    switch value {
    case .some:
        return true
    case .none:
        return false
    }
}

extension Optional {
    public var isPresent: Bool {
        switch self {
        case .some:
            return true
        case .none:
            return false
        }
    }
    
    @discardableResult
    public func ifPresent(_ consumer: Consumer<Wrapped>) rethrows -> Optional<Wrapped> {
        if let value = self {
            try consumer(value)
        }
        return self
    }
}
