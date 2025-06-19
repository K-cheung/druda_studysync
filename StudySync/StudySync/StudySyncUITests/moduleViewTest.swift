//
//  moduleViewTests.swift
//  StudySyncUITests
//
//  Created by Jerry on 2024-11-30.
//

import XCTest

final class moduleViewTest: XCTestCase {
    
    // Testing if the necessary buttons are on the module page
    func testModuleView() throws {
        let app = XCUIApplication()
        app.launch()
        
        // Checking that the course "CPEN 221" and "MATH 220" exists
        XCTAssert(app.staticTexts["CPEN 221"].exists)
        XCTAssert(app.staticTexts["MATH 220"].exists)
        
        // Checking that the buttons within CPEN 221 course view exist
        app.staticTexts["CPEN 221"].tap()
        XCTAssert(app.buttons["View Modules"].exists)
        XCTAssert(app.buttons["favoriteButton_0"].exists)
        XCTAssert(app.buttons["Courses"].exists)
        
        // Checking modules within module view exist
        app.buttons["View Modules"].tap()
        XCTAssert(app.buttons["CPEN 221"].exists)
        XCTAssert(app.buttons["Module 1"].exists)
        XCTAssert(app.buttons["Module 2"].exists)
        XCTAssert(app.buttons["Module 3"].exists)
        XCTAssert(app.buttons["Module 4"].exists)
        
        // Checking some topics exist within a module
        app.buttons["Module 1"].tap()
        XCTAssert(app.staticTexts["CN3: The Need for Specifications"].exists)
        XCTAssert(app.staticTexts["CN6: Exceptions"].exists)
        XCTAssert(app.staticTexts["CN9: Debugging"].exists)
    }
}


