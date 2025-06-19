//
//  Untitled.swift
//  StudySync
//
//  Created by Jerry on 2024-11-30.
//

import XCTest

final class historyViewTest: XCTestCase {
    
    // Testing that the buttons in HistoryView are all there
    func testHistoryView() throws {
        let app = XCUIApplication()
        app.launch()

        // Navigating towards a HistoryView
        app/*@START_MENU_TOKEN@*/.staticTexts["MATH 220"]/*[[".cells",".buttons[\"MATH 220\"].staticTexts[\"MATH 220\"]",".staticTexts[\"MATH 220\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["View Modules"].tap()
        app/*@START_MENU_TOKEN@*/.buttons["WEEK 1-4"]/*[[".cells.buttons[\"WEEK 1-4\"]",".buttons[\"WEEK 1-4\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["WEEK 2"]/*[[".cells.buttons[\"WEEK 2\"]",".buttons[\"WEEK 2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["¬P∨¬Q"].tap()
        let submitanswerbutton = app.buttons["submitAnswerButton"]
        submitanswerbutton.tap()
        let nextquestionbutton = app.buttons["nextQuestionButton"]
        nextquestionbutton.tap()
        app.buttons["¬P∧¬Q"].tap()
        submitanswerbutton.tap()
        nextquestionbutton.tap()
        app.buttons["P∨Q is true; ¬(P∨Q) is false"].tap()
        submitanswerbutton.tap()
        nextquestionbutton.tap()
        app.buttons["openHistoryButton"].tap()
        
        // Checking title of HistoryView "History" is present
        XCTAssert(app.staticTexts["History"].exists)

        // Checking a previous answered question exists
        XCTAssert(app.staticTexts["Which of the following statements correctly represents the negation of P ∨ Q?"].exists)
        
        // Checking a previous wrong answer and its corresponding correct answer exist
        XCTAssert(app/*@START_MENU_TOKEN@*/.staticTexts["Your Answer: ¬P∨¬Q"]/*[[".cells.staticTexts[\"Your Answer: ¬P∨¬Q\"]",".staticTexts[\"Your Answer: ¬P∨¬Q\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)
        XCTAssert(app/*@START_MENU_TOKEN@*/.staticTexts["Correct Answer: ¬P∧¬Q"]/*[[".cells.staticTexts[\"Correct Answer: ¬P∧¬Q\"]",".staticTexts[\"Correct Answer: ¬P∧¬Q\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)

        // Checking a previoius correct answer exist
        XCTAssert(app/*@START_MENU_TOKEN@*/.staticTexts["Your Answer: P∨Q is true; ¬(P∨Q) is false"]/*[[".cells.staticTexts[\"Your Answer: P∨Q is true; ¬(P∨Q) is false\"]",".staticTexts[\"Your Answer: P∨Q is true; ¬(P∨Q) is false\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.exists)

        // Checking the close button exist
        XCTAssert(app.buttons["Close"].exists)
    }
}
