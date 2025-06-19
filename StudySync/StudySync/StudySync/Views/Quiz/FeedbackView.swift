/*
    The FeedbackView provides feedback to user after they answer a question.
    - Displays whether their answer was correct or incorrect.
    - Shows an explanation and allows user to proceed to the next question.
*/

import SwiftUI
struct FeedbackView: View {
    var isCorrect: Bool
    var explanation: String
    var onNext: () -> Void
    var onClose: () -> Void


    var body: some View {
        VStack {
            Text(isCorrect ? "Correct!" : "Incorrect")
                .font(.largeTitle)
                .foregroundColor(isCorrect ? .green : .red)
            Text(explanation)
                .padding()
            
            HStack {
                Button("Close") {
                    onClose()
                }
                .accessibilityIdentifier("closeFeedbackButton")
                .padding()
                
                Button("Next") {
                    onNext()
                }
                .accessibilityIdentifier("nextQuestionButton")
                .padding()
            }
        }
        .padding()
    }
}


#Preview {
    FeedbackView(isCorrect: true, explanation: "Correct!", onNext: {}, onClose: {})
}
