//
//  SimpleDateFormatterTests.swift
//  
//
//  Created by Witt, Robert on 22.03.20.
//

import XCTest
@testable import DateUtils

class SimpleDateFormatterTests: XCTestCase {
    
    static var allTests = [
        ("testFormatDate", testFormatDate),
        ("testFormatRelativeDate", testFormatRelativeDate),
    ]
    private let formatter = SimpleDateFormatter(locale: Locale(identifier: "en"))
    
    func testFormatDate() {
        let date = Date(timeIntervalSince1970: 1576671427)
        
        var dateString = formatter.format(date: date, dateStyle: .medium, timeStyle: .none)
        XCTAssertNotNil(dateString)
        XCTAssertEqual(dateString, "Dec 18, 2019")
        
        dateString = formatter.format(date: date, dateStyle: .long, timeStyle: .medium)
        XCTAssertNotNil(dateString)
        XCTAssertEqual(dateString, "December 18, 2019 at 1:17:07 PM")
        
        dateString = formatter.format(date: date, dateStyle: .short, timeStyle: .short)
        XCTAssertNotNil(dateString)
        XCTAssertEqual(dateString, "12/18/19, 1:17 PM")
    }
    
    func testFormatRelativeDate() {
        var dateString = formatter.format(relativeDate: Date())
        XCTAssertNotNil(dateString)
        XCTAssertEqual(dateString, "Today")
        
        dateString = formatter.format(relativeDate: Calendar.current.date(byAdding: .day, value: -1, to: Date())!)
        XCTAssertNotNil(dateString)
        XCTAssertEqual(dateString, "Yesterday")
        
        dateString = formatter.format(relativeDate: Calendar.current.date(byAdding: .day, value: 1, to: Date())!)
        XCTAssertNotNil(dateString)
        XCTAssertEqual(dateString, "Tomorrow")
    }
    
}
