//
//  FluentComparableExtensions.swift
//  FluentAssertions
//
//  Created by odyth on 5/2/18.
//  Copyright © 2018 Stofle. All rights reserved.
//

import XCTest

public extension Comparable
{
    func shouldBeGreaterThan(_ rhs: Self, file: StaticString = #file, line: UInt = #line)
    {
        XCTAssert(self > rhs, "Expected \(self) to be greater than \(rhs)", file:file, line:line)
    }
    
    func shouldBeGreaterThanOrEqual(_ rhs: Self, file: StaticString = #file, line: UInt = #line)
    {
        XCTAssert(self >= rhs, "Expected \(self) to be greater than or equal to \(rhs)", file:file, line:line)
    }
    
    func shouldBeLessThan(_ rhs: Self, file: StaticString = #file, line: UInt = #line)
    {
        XCTAssert(self < rhs, "Expected \(self) to be less than \(rhs)", file:file, line:line)
    }
    
    func shouldBeLessThanOrEqual(_ rhs: Self, file: StaticString = #file, line: UInt = #line)
    {
        XCTAssert(self <= rhs, "Expected \(self) to be less than or equal to \(rhs)", file:file, line:line)
    }
}
