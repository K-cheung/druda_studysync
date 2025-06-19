//
//  StudySyncUITests.swift
//  StudySyncUITests
//
//  Created by Jerry on 2024-11-29.
//

import XCTest

final class contactViewTest: XCTestCase {
    
    // Testing if the necessary buttons exist on the Contact Us page
    @MainActor
    func testContactViewButtons() throws {
        // Opening the app
        let app = XCUIApplication()
        app.launch()
        
        // Checking if contact button exists
        XCTAssert(app.buttons["contactButton"].exists)
        app.buttons["contactButton"].tap()
        
        // Checking if close button exists
        XCTAssert(app.buttons["Close"].exists)
        app.buttons["Close"].tap()
    }
}
