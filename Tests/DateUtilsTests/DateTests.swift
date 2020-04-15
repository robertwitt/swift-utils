//
//  DateTests.swift
//  
//
//  Created by Witt, Robert on 22.03.20.
//

import XCTest
@testable import DateUtils

class DateTests: XCTestCase {
    
    static var allTests = [
        ("testDateFromDateString", testDateFromDateString),
        ("testDateStringFromDate", testDateStringFromDate),
        ("testDateFromDateTimeOffsetString", testDateFromDateTimeOffsetString),
        ("testDateTimeOffsetStringFromDate", testDateTimeOffsetStringFromDate),
        ("testDateFromTimestampString", testDateFromTimestampString),
        ("testTimestampStringFromDate", testTimestampStringFromDate),
        ("testInvalidDate", testInvalidDate),
        ("testInvalidDateString", testInvalidDateString),
        ("testInvalidDateTimeOffsetString", testInvalidDateTimeOffsetString),
    ]

    func testDateFromDateString() {
        let date = Date(dateString: "2019-12-13")
        XCTAssertEqual(date, Date(timeIntervalSince1970: 1576195200))
    }
    
    func testDateStringFromDate() {
        let date = Date(timeIntervalSince1970: 1576195200)
        XCTAssertEqual(date.dateString, "2019-12-13")
    }
    
    func testDateFromDateTimeOffsetString() {
        let date = Date(dateTimeOffsetString: "2019-12-13T09:13:47Z")
        XCTAssertEqual(date, Date(timeIntervalSince1970: 1576228427))
    }
    
    func testDateTimeOffsetStringFromDate() {
        let date = Date(timeIntervalSince1970: 1576228427)
        XCTAssertEqual(date.dateTimeOffsetString, "2019-12-13T09:13:47Z")
    }
    
    func testDateFromTimestampString() {
        let date = Date(timestampString: "2019-12-13T09:13:47.000Z")
        XCTAssertEqual(date, Date(timeIntervalSince1970: 1576228427))
    }
    
    func testTimestampStringFromDate() {
        let date = Date(timeIntervalSince1970: 1576228427)
        XCTAssertEqual(date.timestampString, "2019-12-13T09:13:47.000Z")
    }
    
    func testInvalidDate() {
        XCTAssertNil(Date(dateString: "2019-11-31"))
    }
    
    func testInvalidDateString() {
        XCTAssertNil(Date(dateString: "20191213"))
    }
    
    func testInvalidDateTimeOffsetString() {
        XCTAssertNil(Date(dateString: "2019-12-13 09:13:47"))
    }

}
