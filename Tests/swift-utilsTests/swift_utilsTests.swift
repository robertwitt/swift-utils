import XCTest
@testable import swift_utils

final class swift_utilsTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(swift_utils().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
