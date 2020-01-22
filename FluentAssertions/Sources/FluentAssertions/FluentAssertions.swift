//
//  FluentAssertions.swift
//  FluentAssertions
//
//  Created by odyth on 5/2/18.
//  Copyright © 2018 Stofle. All rights reserved.
//

import XCTest

public func shouldBeNil(_ expression: @autoclosure () throws -> Any?, file: StaticString = #file, line: UInt = #line)
{
    XCTAssertNil(try expression(), "Expected to find nil", file:file, line:line)
}

public func shouldNotBeNil(_ expression: @autoclosure () throws -> Any?, file: StaticString = #file, line: UInt = #line)
{
    XCTAssertNotNil(try expression(), "Expected not to find nil", file:file, line:line)
}

public func invoking(file: StaticString = #file, line: UInt = #line, _ expression:@escaping () throws -> Void) -> Action
{
    return Action(expression, file: file, line: line)
}

public class Action
{
    private let expression:() throws -> Void
    private let file: StaticString
    private let line: UInt
    
    public init(_ expression: @escaping () throws -> Void, file: StaticString = #file, line: UInt = #line)
    {
        self.expression = expression
        self.file = file
        self.line = line
    }
    
    public func shouldNotThrow()
    {
        do
        {
            try expression()
        }
        catch
        {
            XCTAssert(false, "An error should not have been thrown but found \(error)", file: file, line:line)
        }
    }
    
    public func shouldThrow() -> ContinuingAction
    {
        do
        {
            try expression()
            XCTAssert(false, "An error should have been thrown but none was thrown", file: file, line:line)
            return ContinuingAction(error: nil, file:file, line:line)
        }
        catch
        {
            return ContinuingAction(error: error, file:file, line:line)
        }
    }
}

public class ContinuingAction
{
    private let file: StaticString
    private let line: UInt
    private let error: Error?
    
    public init(error: Error?, file: StaticString = #file, line: UInt = #line)
    {
        self.error = error
        self.file = file
        self.line = line
    }
    
    public func and() -> Error
    {
        return error!
    }
}

