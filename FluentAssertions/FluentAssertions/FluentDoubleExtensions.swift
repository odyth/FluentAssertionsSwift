//
//  FluentDoubleExtensions.swift
//  FluentAssertions
//
//  Created by odyth on 9/17/18.
//  Copyright © 2018 Justin Stofle. All rights reserved.
//

import XCTest

public extension Double
{
    public func shouldBeApproximately(_ expectedValue: Double, precision: Double, file: StaticString = #file, line: UInt = #line)
    {
        let num = abs(expectedValue - self)
        XCTAssert(num <= precision, "Expected \(self) to approximate \(expectedValue) +/- \(precision), but \(self) differed by \(num)", file:file, line:line)
    }
    
    public func shouldNotBeApproximately(_ unexpectedValue: Double, precision: Double, file: StaticString = #file, line: UInt = #line)
    {
        let num = abs(unexpectedValue - self)
        XCTAssert(num > precision, "Expected \(self) to not approximate \(unexpectedValue) +/- \(precision), but \(self) only differed by \(num)", file:file, line:line)
    }
}
