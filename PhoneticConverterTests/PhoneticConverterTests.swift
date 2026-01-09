import XCTest
@testable import PhoneticConverter

final class PhoneticConverterTests: XCTestCase {
    func testExampleYX623K73J3() {
        let input = "YX623K73J3"
        let expected = "Yankee Xray Six Two Three Kilo Seven Three Juliet Three"
        XCTAssertEqual(PhoneticTranslator.translate(input), expected)
    }

    func testExampleDash() {
        let input = "A-B"
        let expected = "Alfa Dash Bravo"
        XCTAssertEqual(PhoneticTranslator.translate(input), expected)
    }

    func testExampleWithSpace() {
        let input = "AB 12"
        let expected = "Alfa Bravo One Two"
        XCTAssertEqual(PhoneticTranslator.translate(input), expected)
    }

    func testExampleWithSlash() {
        let input = "A/B"
        let expected = "Alfa Bravo"
        XCTAssertEqual(PhoneticTranslator.translate(input), expected)
    }
}
