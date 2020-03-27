import XCTest

import DateTests
import ErrorTests
import StringTests

var tests = [XCTestCaseEntry]()
tests += DateTests.allTests()
tests += ErrorTests.allTests()
tests += StringTests.allTests()
XCTMain(tests)
