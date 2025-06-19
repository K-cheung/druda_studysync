/*
    The QuizView allows users to do the following:
    - Answer questions
    - View hints (if any) for each question
    - Receive feedback on their answers
    - Restart the quiz once completed 
*/
import SwiftUI
struct QuizView: View {
    var topic: Topic
    @State private var questions: [Question] = []
    @State private var currentQuestionIndex = 0
    @State private var selectedOption: Int? = nil
    @State private var showFeedback = false
    @State private var showHint = false
    @State private var answerRecords: [AnswerRecord] = []
    @State private var showHistoryView = false
    @State private var showQuizCompletion = false
    @State private var correctCount = 0
    @State private var totalQuestionsCount = 0

    var body: some View {
        VStack {
            if showQuizCompletion {
                Text("Well done! You have answered all the questions.")
                Text("You got \(correctCount) / \(totalQuestionsCount) on this quiz!")
                    .padding()
                Button("Restart Quiz") {
                    restartQuiz()
                }
                .accessibilityIdentifier("restartQuizButton")
                
                Button("View History"){
                    showHistoryView = true
                }
                .accessibilityIdentifier("openHistoryButton")
                .padding()
            }
            
            else if currentQuestionIndex < questions.count {
                Text(questions[currentQuestionIndex].text)
                    .font(.headline)
                    .padding()
                
                ForEach(0..<questions[currentQuestionIndex].options.count, id: \.self) { index in
                    Button(action: {
                        selectedOption = index
                    }) {
                        HStack {
                            Text(questions[currentQuestionIndex].options[index])
                            Spacer()
                            if selectedOption == index {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.blue)
                            }
                        }
                        .padding()
                    }
                    .accessibilityIdentifier("answersButtons")
                    .background(Color.white)
                    .cornerRadius(8)
                    .shadow(radius: 2)
                }
                
                HStack {
                    Button("Hint") {
                        showHint = true
                    }
                    .accessibilityIdentifier("showHintButton")
                    .padding()
                    .alert(isPresented: $showHint) {
                        Alert(title: Text("Hint"), message: Text(questions[currentQuestionIndex].hint ?? "No hint available."), dismissButton: .default(Text("OK")))
                    }
                    
                    Spacer()
                    
                    Button("Submit") {
                        submitAnswer()
                    }
                    .accessibilityIdentifier("submitAnswerButton")
                    .padding()
                    .disabled(selectedOption == nil)
                }
            }
        }
        .navigationTitle(topic.name)
        .padding()
        .onAppear {
            fetchQuestions()
        }
        .sheet(isPresented: $showFeedback) {
            FeedbackView(
                isCorrect: isAnswerCorrect(),
                explanation: questions[currentQuestionIndex].explanation,
                onNext: moveToNextQuestion,
                onClose: {
                    showFeedback = false
                }
            )
        }
        .sheet(isPresented: $showHistoryView){
            HistoryView(answerRecords: answerRecords, onClose: {showHistoryView = false })
        }
        .onAppear{
            totalQuestionsCount = questions.count
        }
    }
    
    /*
        Gets the list of questions for the quiz on a certain topic.
    */
    func fetchQuestions() {
        self.questions = topic.questions
    }
    
     /*
        Takes users selected option and adds it to the answer record. 
        Checks whether the selected answer is correct and stores it in the answerRecords.
        Shows the feedback view.
    */
    func submitAnswer() {
        guard let selectedOption = selectedOption else { return }
        let isCorrect = selectedOption == questions[currentQuestionIndex].correctAnswer
        let record = AnswerRecord(id: currentQuestionIndex, question: questions[currentQuestionIndex], selectedOption: selectedOption, isCorrect: isCorrect)
        answerRecords.append(record)
        showFeedback = true
        if isCorrect {
            correctCount += 1
        }
    }
    
    /*
        Checks if the current selected answer is correct. 
        Returns true if it is correct and false otherwise.
    */
    func isAnswerCorrect() -> Bool {
        return selectedOption == questions[currentQuestionIndex].correctAnswer
    }

    /*
    Advances to next question in the quiz. 
    Resets the selectedOption and hides the feedback view. 
    If there are no more questions, the quiz ends.
    */
    func moveToNextQuestion() {
        selectedOption = nil
        showFeedback = false
        if currentQuestionIndex + 1 < questions.count {
            currentQuestionIndex += 1
        } else {
            showQuizCompletion = true
            // Quiz is finished
        }
    }
    
    /*
        Restarts quiz.
        Clears the answerRecords and resets current question index and selected options
    */
    func restartQuiz() {
        currentQuestionIndex = 0
        correctCount = 0
        selectedOption = nil
        showQuizCompletion = false
        answerRecords.removeAll()
    }
}



