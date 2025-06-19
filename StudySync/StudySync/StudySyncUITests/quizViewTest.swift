//
//  quizViewTest.swift
//  StudySyncUITests
//
//  Created by Jerry on 2024-11-30.
//

import XCTest

final class quizViewTest: XCTestCase {

    // Testing if the buttons in QuizView all exist and function correctly
    func testQuizView() throws {
        let app = XCUIApplication()
        app.launch()

        // Navigating towards a small quiz
        app/*@START_MENU_TOKEN@*/.staticTexts["MATH 220"]/*[[".cells",".buttons[\"MATH 220\"].staticTexts[\"MATH 220\"]",".staticTexts[\"MATH 220\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        app.buttons["View Modules"].tap()
        app/*@START_MENU_TOKEN@*/.buttons["WEEK 1-4"]/*[[".cells.buttons[\"WEEK 1-4\"]",".buttons[\"WEEK 1-4\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        app/*@START_MENU_TOKEN@*/.buttons["WEEK 2"]/*[[".cells.buttons[\"WEEK 2\"]",".buttons[\"WEEK 2\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        // Checking an answer within quiz view exists
        XCTAssert(app.buttons["¬P∨¬Q"].exists)
        
        // Checking hint butto exists
        XCTAssert(app.buttons["Hint"].exists)
        
        // Checking return button exists
        XCTAssert(app.buttons["WEEK 1-4"].exists)
        
        // Answering a question incorrectly
        app.buttons["¬P∨¬Q"].tap()
        
        let submitanswerbutton = app.buttons["submitAnswerButton"]
        submitanswerbutton.tap()
        
        // Check nextQuestionButton and closeButton exist after answering a question
        let nextquestionbutton = app.buttons["nextQuestionButton"]
        XCTAssert(nextquestionbutton.exists)
        XCTAssert(app.buttons["Close"].exists)
        
        // Checking "Incorrect" exists
        XCTAssert(app.staticTexts["Incorrect"].exists)
        
        // Checking output message exists
        XCTAssert(app.staticTexts["The negation of a disjunction (∧) of the negated variables. By De Morgan's Laws, ¬(P∨Q)≡¬P∧¬Q."].exists)
        
        nextquestionbutton.tap()
        
        // Cycling to the last page by answering another question
        app.buttons["¬P∧¬Q"].tap()
        submitanswerbutton.tap()
        nextquestionbutton.tap()
        
        // Answering a question correctly
        app.buttons["P∨Q is true; ¬(P∨Q) is false"].tap()
        submitanswerbutton.tap()
        
        // Checking "Correct" in a correctly answered question
        XCTAssert(app.staticTexts["Correct!"].exists)
        
        nextquestionbutton.tap()
        
        // Checking for "Restart Quiz" and "View History" buttons
        XCTAssert(app.buttons["Restart Quiz"].exists)
        XCTAssert(app.buttons["openHistoryButton"].exists)
        
        // Checking for return button
        XCTAssert(app.buttons["WEEK 1-4"].exists)
    }
}
