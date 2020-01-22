//
//  FluentOptionalExtensions.swift
//  FluentAssertions
//
//  Created by odyth on 5/2/18.
//  Copyright © 2018 Stofle. All rights reserved.
//

import XCTest

public extension Optional
{
    func shouldBeNil(file: StaticString = #file, line: UInt = #line)
    {
        XCTAssertNil(self, "Expected \(self!) to be nil", file:file, line:line)
    }
    
    func shouldNotBeNil(file: StaticString = #file, line: UInt = #line)
    {
        XCTAssertNotNil(self, "Expected not to find nil", file:file, line:line)
    }
}
