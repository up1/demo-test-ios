import XCTest
@testable import Workshop01

class MyRandomTests: XCTestCase {

    func test_should_be_5() {
        let stub = StubRandom5()

//        let myRandom = MyRandomNumber(stub) // Constructor injection
//        myRandom.random = stub // Property injection
//        myRandom.getNumber(stub) // Method injection

        let myRandom = MyRandomNumber()
        myRandom.random = stub
        XCTAssertEqual(7, myRandom.getNumber())
    }
    
    func test_should_be_call_get_one_tine() {
        let spy = SpyRandom()
        let myRandom = MyRandomNumber()
        myRandom.random = spy
        _ = myRandom.getNumber()
        XCTAssertTrue(spy.verify(expected: 1))
    }
}

class SpyRandom: RandomX {
    var counter = 0
    func verify(expected: Int) -> Bool {
        return self.counter == expected
    }
    override func get() -> Int {
        self.counter += 1
        return 900000
    }
}

class StubRandom5: RandomX {
    override func get() -> Int {
        return 5
    }
}
