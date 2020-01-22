//
//  FluentSequenceExtensions.swift
//  FluentAssertions
//
//  Created by odyth on 5/2/18.
//  Copyright © 2018 Stofle. All rights reserved.
//

import XCTest

public extension Sequence
{
    func shouldContain<T: Equatable>(_ element: T, file: StaticString = #file, line: UInt = #line) where Iterator.Element == T
    {
        XCTAssertTrue(self.contains(element), "Expected sequence to contain \(element)", file:file, line:line)
    }
    
    func shouldContain(where predicate: (Self.Element) throws -> Bool, file: StaticString = #file, line: UInt = #line) rethrows
    {
        XCTAssertTrue(try self.contains(where: predicate), "Expected sequence to contain \(Self.Element.self)", file:file, line:line)
    }
}
