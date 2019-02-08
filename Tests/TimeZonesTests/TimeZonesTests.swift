import XCTest
@testable import TimeZones

final class TimeZonesTests: XCTestCase {

    static var allTests = [
        ("testAbbrevation", testAbbrevation),
        ("testZone", testZone),
    ]

    func testAbbrevation() {
        XCTAssertEqual(TimeZone(abbrevation: .gmt).abbreviation(), "GMT")
    }
    
    func testZone() {
        XCTAssertEqual(TimeZone.Europe.Budapest.identifier, "Europe/Budapest")
    }

    
}
