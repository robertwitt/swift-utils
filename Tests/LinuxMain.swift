import XCTest

import DateUtilsTests
import ErrorUtilsTests
import StringUtilsTests

var tests = [XCTestCaseEntry]()
tests += DateUtilsTests.allTests()
tests += ErrorUtilsTests.allTests()
tests += StringUtilsTests.allTests()
XCTMain(tests)
