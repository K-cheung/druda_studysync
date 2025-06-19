import java.util.*;

public class ArchitectureStubs {

    // SubjectController
    
    /**
     * Precondition: HomeView only exists in the client.
     * Postcondition: Returns true if HomeView displays the HomeController successfully.
     * @return true if HomeView displays the HomeController successfully.
     */
    public boolean displayHomeView() {
        // TODO: implement
        return (viewDisplayed);
    }

    // Precondition: ContactView only exists in the client.
    // Postconditions: Returns true if ContactView displays the following successfully:
    // 1. Contact information of the developer team.
    // 2. An exit button.
    public boolean displayContactView() {
        // TODO: implement
        return (viewDisplayed);
    }

    // Precondition: QuizView only exists in the client.
    // Postconditions: Returns true if QuizView displays the following successfully:
    // 1. A history button
    // 2. A continue button
    // 3. Current question
    // 4. A series of answer options
    // 5. QuizController
    public boolean displayQuizView() {
        // TODO: implement
        return (viewDisplayed);
    }

    //HomeController

    // Precondition: SubjectView only exists in the client.
    // Postconditions: Returns true if SubjectView displays the following successfully:
    // 1. SubjectController
    // 2. All currently supported topics within the module
    public boolean displaySubjectView() {
        // TODO: implement
        return (viewDisplayed);
    }

    // Precondition: CourseView only exists in the client.
    // Postcondition: Returns true if CourseView displays the supported courses successfully.
    public boolean displayCourseView() {
        // TODO: implement
        return (viewDisplayed);
    }

    //ContactController

    //QuizController

    // Preconditions: 
    // 1. topic is not null or blank.
    // 2. topic exists in database.
    // Postconditions: 
    // 1. Returns a map of question IDs and their corresponding topic names.
    // 2. Returns an empty map if no questions associated with the specified topic.
    public Map<Integer, String> getQuestionListFromModel(String topic) {
        // TODO: implement
        return (questionMap);
    }

    // Precondition: list of question is not null.
    // Postcondition: Returns true if the list of questions is successfully stored in the database.
    public boolean storeQuestions(List<String> questions) {
        // TODO: implement
        return (whether_questions_are_stored_locally);
    }
    
    // Precondition: button_press is not null.
    // Postcondition: Returns true if question is answered correctly.
    public boolean answerStatus(button_press) {
        // TODO: implement
        return (question_correctness);
    }

    // Precondition: button_press is not null.
    // Postcondition: Returns true if question is answered correctly.
    public boolean retrieveQuestionCorrectness(button_press) {
        // TODO: implement
        return(Map<Integer, Boolean> questionId, its_correctness);
    }
    
    // Postcondition: Returns true if a question is displayed successfully.
    public boolean displayRandomQuestion () {
        // TODO: implement
        return (randomQuestionDisplayed);
    }

    // HistoryController

    // Precondition: button_press is not null.
    // Postcondition: Returns true if selected question is displayed correctly.
    public boolean displaySelectedQuestion(button_press) {
        // TODO: implement
        return (selectedQuestionDisplayed);
    }

}
