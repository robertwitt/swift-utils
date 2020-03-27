//
//  ErrorObjectTests.swift
//  
//
//  Created by Witt, Robert on 27.03.20.
//

import XCTest
@testable import Error

class ErrorObjectTests: XCTestCase {
    
    static var allTests = [("testErrorWithMessage", testErrorWithMessage)]
    
    func testErrorWithMessage() {
        let error = ErrorObject("An error occured")
        XCTAssertEqual(error.localizedDescription, "An error occured")
    }
    
}
