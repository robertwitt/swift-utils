//
//  StringBuilderTests.swift
//  
//
//  Created by Witt, Robert on 27.03.20.
//

import Foundation

import XCTest
@testable import String

class StringBuilderTests: XCTestCase {
    
    static var allTests = [
        ("testAppendingStrings", testAppendingStrings),
        ("testPrependingStrings", testPrependingStrings),
        ("testWithoutSeparator", testWithoutSeparator),
        ("testWithNilOnly", testWithNilOnly),
    ]

    func testAppendingStrings() {
        let string = StringBuilder()
            .append("John")
            .append("F.")
            .append(nil)
            .append("Kennedy")
            .build(separator: " ")
        
        XCTAssertNotNil(string)
        XCTAssertEqual(string, "John F. Kennedy")
    }
    
    func testPrependingStrings() {
        let string = StringBuilder(initialString: "Luther")
            .append("King")
            .prepend("Martin")
            .build(separator: " ")
        
        XCTAssertNotNil(string)
        XCTAssertEqual(string, "Martin Luther King")
    }
    
    func testWithoutSeparator() {
        let string = StringBuilder()
            .append("2019")
            .append("-")
            .append("12")
            .append("-")
            .append("06")
            .build()
        
        XCTAssertNotNil(string)
        XCTAssertEqual(string, "2019-12-06")
    }
    
    func testWithNilOnly() {
        let string = StringBuilder()
            .append(nil)
            .append(nil)
            .append(nil)
            .build()
        
        XCTAssertNil(string)
    }

}
