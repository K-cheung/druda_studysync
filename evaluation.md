## Evaluation Process:
- We first started by reading the README.md to understand the project and watched the video demo they provided. We also read through their requirements to keep in mind when testing their application.
- Then we followed their installation instructions and were able to open their application.
- We then started testing by running all of their available commands to see if they were all functioning properly. 
## List of Bugs Found 
### Major Bugs:
- Error occurs when running USER INFO
<img width="1627" alt="Screenshot 2024-12-06 at 12 57 42 PM" src="https://github.com/user-attachments/assets/8bdfaf02-52b4-4411-bda3-322c16ed6379">

- Error occurs when executing FACILITY GET_LOCATIONS on locations with two words. For example, error occurs for FACILITY GET_LOCATIONS Coffee Shop but not FACILITY GET_LOCATIONS Library:
  
![Screenshot 2024-12-06 at 11 25 59 AM](https://github.com/user-attachments/assets/666d4d65-f14d-4322-95b6-cb4a687f2d74)

- Same problem with other commands like LOCATION GET_ZONES (can't execute with location names that consist of more than one word)

- No response(valid output) when getting ZONE GET_ALL_TIMESLOTS. Doesn't work with arguments that have space in between.

 ![PHOTO-2024-12-06-13-15-50](https://github.com/user-attachments/assets/94bd242a-32c6-4371-9908-fbd0ef1d68f0)
- Did not declare how to use ZONE UPDATE_INTENTION_TO_GO clearly, don't know what to input for <timeslot id>. Therefore not working properly.

![PHOTO-2024-12-06-13-26-56](https://github.com/user-attachments/assets/aabd0a69-3d75-4adb-bd26-1ada5d8f43f7)
- No output for RECOMMEND CURRENT Gym; nothing shows up for recommendation of the restaurant. Arguments with space doesn't work

![PHOTO-2024-12-06-13-29-35](https://github.com/user-attachments/assets/7bf542b3-48af-4f5c-adc2-b10e6b011155)
- RECOMMEND UPCOMING doesn’t work at all.
### Minor Bugs:
- Commands are case-sensitive

![PHOTO-2024-12-06-13-08-42](https://github.com/user-attachments/assets/6691e5c3-bcd0-4f09-bd5f-2020e9fa4a89)

- Program doesn't exit after executing USER INFO, (runs indefinitely, doesn't accept new commands)
