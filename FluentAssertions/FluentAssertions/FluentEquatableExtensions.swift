//
//  FluentEquatableExtensions.swift
//  FluentAssertions
//
//  Created by odyth on 5/2/18.
//  Copyright © 2018 Stofle. All rights reserved.
//

import XCTest

public extension Equatable
{
    public func shouldBe(_ rhs: Self, file: StaticString = #file, line: UInt = #line)
    {
        XCTAssert(self == rhs, "Expected \(self) to equal \(rhs)", file:file, line:line)
    }
    
    public func shouldBe(_ rhs: Self?, file: StaticString = #file, line: UInt = #line)
    {
        XCTAssert(self == rhs, "Expected \(self) to equal \(String(describing: rhs))", file:file, line:line)
    }
    
    public func shouldNotBe(_ rhs: Self, file: StaticString = #file, line: UInt = #line)
    {
        XCTAssert(self != rhs, "Expected \(self) to not equal \(rhs)", file:file, line:line)
    }
    
    public func shouldNotBe(_ rhs: Self?, file: StaticString = #file, line: UInt = #line)
    {
        XCTAssert(self != rhs, "Expected \(self) to not equal \(String(describing: rhs))", file:file, line:line)
    }
}
