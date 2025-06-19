/*
    The HistoryView displays a list of previously answered questions and their details.
    HistoryView: displays scrollable list of answer records and details.
    - Question
    - User's selected answer
    - Correct answer: correct answers highlighted green and incorrect in red
*/

import SwiftUI

struct HistoryView: View {
    var answerRecords: [AnswerRecord]
    var onClose: () -> Void

    var body: some View {
        NavigationView {
            List(answerRecords) { record in
                VStack(alignment: .leading, spacing: 5) {
                    Text(record.question.text)
                        .font(.headline)
                    Text("Your Answer: \(record.question.options[record.selectedOption])")
                        .foregroundColor(record.isCorrect ? .green : .red)
                    Text("Correct Answer: \(record.question.options[record.question.correctAnswer])")
                        .foregroundColor(.blue)
                }
                .padding(.vertical, 5)
            }
            .navigationTitle("History")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Close") {
                        onClose()
                        // Dismiss the view
                    }
                }
            }
        }
    }
}


