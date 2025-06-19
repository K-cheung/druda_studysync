
**Architecture**



* **DatabaseModel**
    * This component is a model that stores all the questions the app can ask and all the available and correct answers. 
    * This component only exists on the server.
    * Questions are grouped into topics.
    * Topics are grouped into subjects.
    * Each question has its associated ID.

* **HomeView**
    * HomeView only exists in the client
    * The HomeView displays the HomeController
    * The HomeView displays all currently supported courses by the app

* **HomeController**
    * The HomeController only exists in the client
    * The HomeController is only active when HomeView is displayed
    * The HomeController can ask to display the SubjectView or ContactView

* **SubjectView**
    * SubjectView only exists in the client
    * The SubjectView displays the SubjectController
    * The SubjectView displays all currently supported topics within the subject

* **SubjectController**
    * The SubjectController only exists in the client
    * The SubjectController is only active when SubjectView is displayed
    * The SubjectController can ask to display HomeView, ContactView, or QuizView

* **ContactView**
    * The ContactView only exists in the client
    * The ContactView displays the contact information of the developer team and an exit button

* **ContactController**
    * The ContactController only exists in the client
    * The ContactController is only active when ContactView is displayed
    * The ContactController can ask to display SubjectView

* **QuizView**
    * QuizView only exists in the client.
    * The QuizView can display 
        * A history button
        * A continue button
        * The current question
        * The series of choices of answers of the current question
        * The QuizController
    * The QuizView can display HistoryView which shows the questions the user has completed within one session.
        * One session is defined any period between entering any pages except QuizView and HistoryView

* **QuizController**
    * QuizController only exists in the client.
    * Only the QuizController communicates with the DatabaseModel
    * The QuizController can ask DatabaseModel to store a question, the question’s selection of answers, and the question’s correct answer
    * The QuizController can store past answered questions and their “correctness” locally
    * The QuizController can ask DatabaseModel to store a specified user-specified question or a random question
    * The QuizController can ask to display HistoryView or SubjectView
    * The QuizController is only active when QuizView is displayed

* **HistoryView**
    * The HistoryView only exists in the client
    * The HistoryView displays HistoryController
    * The HistoryView displays a series of client-completed questions within one session, and its “correctness”

* **HistoryController**
    * The HistoryController only exists in the client
    * The HistoryController is only active when HistoryView is displayed
    * The HistoryController can ask to display QuizView after user selects a question, which will be different depending on the selected question
