//
//  FluentDateExtensions.swift
//  FluentAssertions
//
//  Created by odyth on 5/2/18.
//  Copyright © 2018 Stofle. All rights reserved.
//

import XCTest

public extension Date
{
    public func shouldBeCloseTo(_ date: Date, precision: TimeInterval = 0.2, file: StaticString = #file, line: UInt = #line)
    {
        let duration = self - date
        let absoluteValue = abs(duration)
        XCTAssert(absoluteValue <= precision, "Expected \(self) to be close to \(date), but differed by \(absoluteValue)", file:file, line:line)
    }
    
    public func shouldBeAfter(_ date: Date, precision: TimeInterval = 0.2, file: StaticString = #file, line: UInt = #line)
    {
        XCTAssert(self > date, "Expected \(self) to be after \(date)", file:file, line:line)
    }
    
    public func shouldBeOnOrAfter(_ date: Date, precision: TimeInterval = 0.2, file: StaticString = #file, line: UInt = #line)
    {
        XCTAssert(self >= date, "Expected \(self) to be on or after \(date)", file:file, line:line)
    }
    
    public func shouldBeBefore(_ date: Date, precision: TimeInterval = 0.2, file: StaticString = #file, line: UInt = #line)
    {
        XCTAssert(self < date, "Expected \(self) to be before \(date)", file:file, line:line)
    }
    
    public func shouldBeOnOrBefore(_ date: Date, precision: TimeInterval = 0.2, file: StaticString = #file, line: UInt = #line)
    {
        XCTAssert(self <= date, "Expected \(self) to be on or before \(date)", file:file, line:line)
    }
    
    internal static func -(left: Date, right: Date) -> TimeInterval
    {
        return left.timeIntervalSince(right)
    }
}
