**Requirements**



* Main page requirements 
    * The system should display a list of courses available for question generation.
    * Each course displayed should be clickable, directing the user to a list of modules and topics within that course.
    * The system should include a “Request Question Set Update” button that when clicked, opens a window displaying “Contact us at <span style="text-decoration:underline;">[example@gmail.com](mailto:xxxx@gmail.com)</span>”
    * The system should allow users to navigate back to the previous page.
    * The system should allow users to navigate to the home page from any page.
* Course and module(topic) navigation requirements
    * When a course is selected, the system should display a new page listing the modules and topics associated with that course.
    * Each module or topic displayed should be clickable, allowing users to select a specific topic.
    * The system should allow navigation back to the previous page.
    * Allow navigation back to the home page.
* Question sets download and generation requirements.
    * The system should fetch questions and answers for a selected topic from a Github/Server database upon user request.
    * A “Generate a Question” button should be displayed on the topic page, allowing users to request new questions.
    * After pressing “Generate Question”, the system should display a multiple-choice question from the database.
    * The downloaded questions should be stored locally to avoid repeated downloads for the same topic, optimizing loading times.
* Question display and Interaction requirements
    * The system should display each multiple-choice question with:
        * The question text
        * Four or more answer options, each represented as a selectable button.
    * A “submit” button should be displayed for users to submit answer.
    * A “Hint” button should be available to provide optional hints for each question when pressed (displayed “Hints not available when there are no hints”)
    * After pressing “Submit,” the system should
        * Evaluate(by comparing) the user’s answer.
        * Display immediate feedback indicating whether the answer is correct or incorrect.
        * Show the correct answer if the user’s response was incorrect
        * Display a “Generate new question/Next question” -- back to the start
* Feedback module requirements
    * After the user submits an answer, the system should display feedback indicating:
        * Whether the selected answer was correct 
        * Show correct answers with explanations if the selected answer is incorrect.
    * The system should allow users to press a “Generate next question” button to retrieve additional questions if desired.
* Error handling requirements
    * Display error messages if there's any failure in downloading questions from the server 
    * Display messages if no internet connection is available when attempting to fetch questions 
    * If invalid input is detected(e.g., an answer option is not selected before submission), the system should prompt the users to select an answer.
* User feedback and notifications requirements 
    * The system should inform the user when questions are successfully downloaded from the server.
    * The system should display a loading indicator when fetching questions from the server to inform the user of background processes.
* UI requirements 
    * The main page should have a simple, clean layout displaying courses, with buttons for requesting updates and accessing topics within each course.
    * Course, module, and topic lists should be laid out and easily scrollable.
    * The question and answer display should be uncluttered, with clearly labelled answer buttons and feedback options.
    * All buttons (e.g., Submit, Hint, Generate More Questions) should be large enough to be easily accessible on mobile devices.
* Implement constraints 
    * The system should fetch all questions and answers data from a GitHub repository database.
    * The system should be optimized to prevent repeated downloads by storing data locally.
