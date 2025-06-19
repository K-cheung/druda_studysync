# Prioritized List of Issues with Proposed Fixes


### 1. **Incorrect Grading After Quiz (#3) - Major**  
**Description:**  
The quiz grading system occasionally produces incorrect results. When users change incorrect answers to correct ones, the final grade sometimes exceeds the total possible score (e.g., 12/10).  

**Justification:**  
This is a critical issue because it directly affects the core functionality of the app—grading and providing feedback. If the grading system is unreliable, users cannot trust the app’s feedback, undermining its primary purpose as a learning tool.  

**Proposed Fix:**  
- Review the quiz submission logic in `QuizView.swift` or related files.  
- Check whether scores are accumulated multiple times when answers are corrected.  
- Ensure that answers are only counted after submission and reset the grading state before new attempts.  
- Add automated tests to verify correct scoring after answer corrections.

---

### 2. **Incorrect Answers Displayed in History (#1) - Major**  
**Description:**  
The history feature shows duplicate incorrect answers and when the user corrects their answer, the history fails to display corrected answers properly.  

**Justification:**  
The history function is essential for reviewing past performance, and incorrect feedback can confuse users and hinder their learning process. Since it affects the core learning experience, it is crucial that it is fixed.  

**Proposed Fix:**  
- Check the logic in `HistoryView.swift` and `AnswerRecord.swift`.  
- Ensure answers can only be recorded once per question to remove duplicates.  
- Update the history when answers are corrected or quizzes are resubmitted.  
- Add unit tests for recording and displaying quiz history.

---

### 3. **Missing Question in CPEN 221 (#2) - Major**  
**Description:**  
In some modules, such as Module 1 of CPEN 221, only two out of four answer options are visible, making it impossible to answer the questions correctly.  

**Justification:**  
Missing answer options prevent users from completing quizzes, directly impacting the app’s functionality. Fixing this is crucial to ensuring the app works as intended.  

**Proposed Fix:**  
- Check the JSON data structure in `courseData.json` for missing options.  
- Verify the UI rendering in `QuizView.swift` to ensure all options are dynamically displayed.  
- Implement a fallback mechanism in the UI to show a placeholder if any options are missing or to only allow users to select options that are displayed.  
- Add tests to validate that every question has the correct number of options.

---

### 4. **Missing Weeks in Math 220 (#4) - Minor**  
**Description:**  
Only Weeks 1 and 2 are available in Math 220, while Weeks 3 and 4 are missing.  

**Justification:**  
Although this is a usability issue, it is less critical than the other problems because it does not break the app’s core features. However, adding the missing weeks is essential for content completeness.  

**Proposed Fix:**  
- Update the `courseData.json` file to include the missing weeks and their respective questions, answers, and hints.  
- Validate that the updated JSON structure matches the expected data model in the app.  
- Perform manual testing to confirm that all weeks are correctly displayed.  

---

## Additional Notes:  
- After reviewing the reported issues, the team agrees that the identified issues are valid and should be addressed.  
- No incorrectly identified issues were found.  
- We will begin with fixes that impact functionality and feedback accuracy before moving on to content-related issues.  

