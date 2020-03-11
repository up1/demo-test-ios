@testable import Workshop01
import XCTest

class Workshop01Tests: XCTestCase {
    func test_Hello_with_somkiat_should_sayHi_Hi_Somkiat() {
        let hello = Hello(name: "somkiat")
        let actualResult = hello.sayHi()
        XCTAssertEqual("Hi, somkiat", actualResult)
    }
}
