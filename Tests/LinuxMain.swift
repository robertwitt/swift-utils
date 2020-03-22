import XCTest

import swift_utilsTests
import DateTests

var tests = [XCTestCaseEntry]()
tests += swift_utilsTests.allTests()
tests += DateTests.allTests()
XCTMain(tests)
