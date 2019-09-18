//
//  FunctionalInterfaces.swift
//  Functional
//
//  Created by Geonu Jeon on 2019/09/18.
//

public typealias Runnable = () throws -> Void
public typealias Supplier<T> = () throws -> T
public typealias Consumer<T> = (T) throws -> Void
public typealias BiConsumer<T, U> = (T, U) throws -> Void

public typealias UnaryOperator<T> = (T) throws -> T
public typealias BinaryOperator<T> = (T, T) throws -> T

public typealias Function<T, R> = (T) throws -> R
public typealias BiFunction<T, U, R> = (T, U) throws -> R

public typealias Predicate<T> = (T) throws -> Bool
public typealias BiPredicate<T, U> = (T, U) throws -> Bool
