import XCTest

import DateTests
import ErrorTests

var tests = [XCTestCaseEntry]()
tests += DateTests.allTests()
tests += ErrorTests.allTests()
XCTMain(tests)
