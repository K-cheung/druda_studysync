/*
    Topic is a model representing a topic.
    Each topic contains:
    - unique identifier
    - name
    - list of associated questions
*/

struct Topic: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var questions: [Question]
}
