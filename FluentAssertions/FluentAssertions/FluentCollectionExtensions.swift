//
//  FluentCollectionExtensions.swift
//  FluentAssertions
//
//  Created by odyth on 5/2/18.
//  Copyright © 2018 Stofle. All rights reserved.
//

import XCTest

public extension Collection
{
    public func shouldBeEmpty(file: StaticString = #file, line: UInt = #line)
    {
        XCTAssertTrue(self.isEmpty, "Expected \(self) to be empty, however found \(self.count) items", file:file, line:line)
    }
    
    public func shouldNotBeEmpty(file: StaticString = #file, line: UInt = #line)
    {
        XCTAssertFalse(self.isEmpty, "Expected \(self) to not be empty", file:file, line:line)
    }
}
