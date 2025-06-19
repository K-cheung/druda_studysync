/* 
    The AnswerRecord represents a user's answer to a specific question within the StudySync application.
    id: unique identifier for this AnswerRecord.
    question: the question the user answered.
    selectedOption: the option the user selected.
    isCorrect: whether the option selected is the correct answer.
*/

import Foundation

struct AnswerRecord: Identifiable {
    var id : Int
    var question: Question
    var selectedOption: Int
    var isCorrect: Bool
}
