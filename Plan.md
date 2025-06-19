
**Plan**

**1. How will you coordinate your work?**

**Project Manager:**

Jerry (PM) will be in charge of organizing our work, giving each team member tasks, and making sure we stay on schedule to release the first version by the end of Week 4, with the final version done within 5-6 weeks.

**How We’ll Work Together:**

Jerry will assign tasks based on what each team member is good at and keep track of our progress. We’ll check in weekly to talk about our work, deal with any issues, and adjust as needed.

**Meetings:**

We’ll have a meeting once a week. Jerry will set the agenda for these meetings, including what we need to complete, any challenges we’re facing, and what to work on next.

Why This Works:

Meeting each week helps us keep up with the schedule, solve problems early, and ensure we’re moving forward.

**2. What tools will you use to communicate?**

Main Communication Tool: Instagram

Other Options Considered: Slack or Discord

Why Instagram? We’ll use Instagram group messages for quick updates and simple messaging. Using Instagram Stories, we can also share quick snapshots of what’s been done and what’s next, so everyone stays updated visually.

Video Calls Tool: Zoom

Other Options Considered: Google Meet

Why Zoom? We’ll use Zoom for our weekly meetings because it’s reliable and allows screen sharing, which helps us look at work together and solve problems.

Why We Chose These Tools:

Instagram helps us share quick updates and photos, while Zoom is great for focused meetings and lets us work together in real-time.

**3. Who will own components in your architecture?**

Each team member is assigned to one part of the project to make sure each part is well-done and has a clear owner.

**Component Ownership:**

DatabaseModel

Owner: Yuta

Role: Yuta will handle the server-side database, which includes storing questions and answers and managing any errors when we’re trying to fetch data.

NotQuizView

Owner: Kayli

Role: Kayli will design and build the screens for courses, subjects, and contact info, making sure it’s simple and easy for users to navigate.

NotQuizController

Owner: Kathryne

Role: Kathryne will create the logic to control NotQuizView, handling things like navigating between screens and making sure everything works smoothly.

QuizView

Owner: Jimmy

Role: Jimmy will build the quiz page, including the question text, answer buttons, feedback, and hints, focusing on making it easy and engaging for users.

QuizController

Owner: Jerry

Role: Jerry will handle the quiz backend logic, like fetching questions, checking answers, and tracking user progress to make sure it’s stored correctly.

Why This Setup Works:

Giving each team member a specific part keeps them focused and makes it clear who’s responsible for each part.

**4. What is your timeline?**

Goals & Deadlines:

Week 1: Finalize Design and Structure

Finalize how the system will look and decide on the technical structure.

Goal: Clear design and plan for the project.

Week 2: Set Up the Backend (Yuta)

Create the database and server-side code for storing questions and handling errors.

Goal: Backend is set up with sample data.

Week 3: Start Frontend Design – NotQuizView (Kayli)

Build pages for the main screens (Home, Subject, and Contact) with navigation.

Goal: Initial frontend layout is ready.

Week 4: Build Controller Logic – NotQuizController and QuizController (Kathryne, Jerry)

Create logic for navigation and quiz operations.

Goal: First version ready for initial testing and feedback.

Weeks 5-6: Finish Quiz Display – QuizView (Jimmy), Complete Integration, and Final Testing

Add interactive quiz elements, then test and debug.

Goal: Final version is ready for release.

Why This Timeline Works:

This schedule lets us build a basic version in 4 weeks for testing, with extra time in Weeks 5-6 for finishing touches.


**5. How will you verify that you've met your requirements?**

**Main page requirements**
We will write tests that simulate the action of clicking buttons and seeing each page is able to navigate smoothly to other pages

After the base app architecture is complete for the app, we can then simulate the actual app on devices and test it out within the app

When in this stage we check that elements should not be manipulable by the user
Correct content should also be showing

**Course and module(topic) navigation requirements**

We will write tests that simulate the action of clicking buttons and seeing each page is able to navigate smoothly to other pages

After the base app architecture is complete for the app, we can then simulate the actual app on devices and test it out within the app

When in this stage we check that elements should not be manipulable by the user

Correct content should also be showing

**Question sets download and generation requirements**

We write programmable tests that check

If the questions are all downloaded

If the questions are downloaded correctly

If “Generate Test” generates a question that has not been previously asked

If “Generate Test” generates a matching question-answer set

After app is developed, we test such characteristics above on the app

**Question display and Interaction requirements**

We write programmable tests that check

If the answers displayed correspond to the appropriate question

If the “submit” and “hint” button work as intended

If the submitted answer has an appropriate response

If this response is displayed correctly

If the “return” button works as intended

After app is developed, we test such characteristics above on the app

**Error handling requirements**

We write programmable tests that check the test case scenarios where errors are certain to happen

**User feedback and notifications requirements**

We write programmable tests to check

If the downloading progress is displayed correctly

If condition of successfully downloading question set is displayed

**UI requirements**

After app is developed, we manually check each screen matches the intended design

Ask some other people for their opinion on whether each screens is easy to navigate

**Implement constraints**

We write programmable tests to check

If redundant questions are fetched

If only necessary questions are fetched
