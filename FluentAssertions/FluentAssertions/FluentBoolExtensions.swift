//
//  FluentBoolExtensions.swift
//  FluentAssertions
//
//  Created by odyth on 5/2/18.
//  Copyright © 2018 Stofle. All rights reserved.
//

import XCTest

public extension Bool
{
    func shouldBeTrue(file: StaticString = #file, line: UInt = #line)
    {
        XCTAssertTrue(self, "Expected \(self) to equal true", file:file, line:line)
    }
    
    func shouldBeFalse(file: StaticString = #file, line: UInt = #line)
    {
        XCTAssertFalse(self, "Expected \(self) to equal false", file:file, line:line)
    }
}
