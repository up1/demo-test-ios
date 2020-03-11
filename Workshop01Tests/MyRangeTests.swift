import XCTest
@testable import Workshop01

class MyRangeTests: XCTestCase {

    func test_start_with_include() {
        let range = MyRange(input: "[1,5]")
        let actualResult = range.isInclude()
        XCTAssertTrue(actualResult, "Must start with [")
    }

    func test_start_with_exclude() {
        let range = MyRange(input: "(1,5]")
        let actualResult = range.isInclude()
        XCTAssertFalse(actualResult, "Must start with (")
    }

    func test_start_with_include_and_1_should_be_1() {
        let range = MyRange(input: "[1,5]")
        let actualResult = range.getStart()
        XCTAssertEqual(1, actualResult)
    }

    func test_start_with_exclude_and_1_should_be_2() {
        let range = MyRange(input: "(1,5]")
        let actualResult = range.getStart()
        XCTAssertEqual(2, actualResult)
    }

}
