//
//  Optional.swift
//  Functional
//
//  Created by Geonu Jeon on 2019/09/18.
//

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
        if self.isPresent {
            try consumer(self!)
        }
        return self
    }
}
