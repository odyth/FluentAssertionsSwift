//
//  FluentStringExtensions.swift
//  FluentAssertions
//
//  Created by odyth on 5/2/18.
//  Copyright © 2018 Stofle. All rights reserved.
//

import XCTest

public extension String
{
    func shouldContain(_ string: String, file: StaticString = #file, line: UInt = #line)
    {
        XCTAssertTrue(self.contains(string), "Expected \(self) to contain \(string)", file:file, line:line)
    }
    
    func shouldNotContain(_ string: String, file: StaticString = #file, line: UInt = #line)
    {
        XCTAssertFalse(self.contains(string), "Expected \(self) to not contain \(string)", file:file, line:line)
    }
}

public extension Optional where Wrapped == String
{
    func shouldContain(_ string: String?, file: StaticString = #file, line: UInt = #line)
    {
        if self != nil && string != nil
        {
            self!.shouldContain(string!, file:file, line:line)
        }
        else
        {
            XCTAssert(false, "Expected \(String(describing: self)) to contain \(String(describing: string))", file:file, line:line)
        }
    }
    
    func shouldNotContain(_ string: String?, file: StaticString = #file, line: UInt = #line)
    {
        if self != nil && string != nil
        {
            self!.shouldNotContain(string!, file:file, line:line)
        }
    }
}
