# Task Tracker
## Software Requirements Specification

*Author: Dmitry Landy*
*Date: 4/18/2021*
---

### [1] Functional Requirements
This section specifies the necessary requirements for actions within the task tracker application

#### [1.1] User Account

**ID: FR1**

- TITLE: Locate the application
- DESC: An active internet connection will need to be available. The user will need to know the web address.
- RAT: To load the application that is hosted online.
- DEP: none

**ID: FR2**

- TITLE: User Registration
- DESC: The user will need to go to the registration page of the app and input their information in the fields. Once the fields are in, they will be able to press the "register" button to have their account created.
- RAT: Create an User account
- DEP: FR1

**ID: FR3**

- TITLE: User Log-In
- DESC: Once the user is registered, they will be able to use their credentials they registered with to log in to the app. The will be able to input their username and password correctly and then select the login button.
- RAT: To login to their User account on the app.
- DEP: FR2

**ID: FR4**

- TITLE: Project Management: Add project
- DESC: USer will be able to navigate to a project management page where they will be able to select "add" button to add a new project. They will have to fill out the form and then press "create" to create that project.
- RAT: To add projects for trouble tickets.
- DEP: FR3

**ID: FR5**

- TITLE: Project Management: Remove project
- DESC: User will be able to navigate to a project management page where they will be able to select "Remove" button to remove an existing project. When they do, they will be prompted "are you sure" to ensure its not a misclick. If the select yes, the project and all existing trouble tickets for it will be removed.
- RAT: To remove projects for trouble tickets.
- DEP: FR4

**ID: FR6**

- TITLE: Ticket Management: Create Task.
- DESC: Users will be able to navigate to the "Project" page where they will be able to click on "new" to add a task in a project. After all the fields are filled in appropriately, they will be able to submit the task by pressing "submit". 
- RAT: To add a new task
- DEP: FR3

**ID: FR7**

- TITLE: Log Report
- DESC: Users will be able to navigate to the "Report" page where they will be able to view the history of trouble ticket acitivity. They will also be able to filter through the history to find the information they are looking for (depending of the fields).
- RAT: View the log of bug tracking activity
- DEP: FR3

**ID: FR8**

- TITLE: Log Out
- DESC: Users will be able to select the "log out" button on their UI where they will be prompted if they are sure. If they select "Yes" they will be logged out of the account and go back to the login screen.
- RAT: Log out of the account
- DEP: FR3


