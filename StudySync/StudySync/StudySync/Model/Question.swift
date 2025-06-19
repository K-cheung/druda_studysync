/*
    Question is a model represention a question.
    Each question contains:
    - unique identifier
    - question in text
    - multiple choice answer options
    - index of correct answer
    - optional hint
    - explanation for correct answer
*/

struct Question: Hashable, Codable, Identifiable {
    var id: Int
    var text: String
    var options: [String]
    var correctAnswer: Int // Index of the correct option
    var hint: String?
    var explanation: String
}
