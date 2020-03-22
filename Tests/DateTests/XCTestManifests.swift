import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(DateTests.allTests),
        testCase(SimpleDateFormatterTests.allTests),
    ]
}
#endif
