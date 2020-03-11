import XCTest

class SampleUITests: XCTestCase {

    override func setUp() {
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        let app = XCUIApplication()
        setupSnapshot(app)
        app.launch()
        snapshot("Step 01")
        let inputtfTextField = app.textFields["inputTF"]
        inputtfTextField.tap()
        inputtfTextField.typeText("somkiat")
        
        snapshot("Step 02")

        let xxxbtnButton = app/*@START_MENU_TOKEN@*/.buttons["xxxBtn"]/*[[".buttons[\"Button\"]",".buttons[\"xxxBtn\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        xxxbtnButton.tap()

        let resultlbStaticText = app/*@START_MENU_TOKEN@*/.staticTexts["resultLB"]/*[[".staticTexts[\"Result\"]",".staticTexts[\"resultLB\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        XCTAssertEqual("Result", resultlbStaticText.label)
        snapshot("Step 03")
    }

}
