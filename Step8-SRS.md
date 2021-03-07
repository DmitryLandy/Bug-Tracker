# Bug Tracker
## Software Requirements Specification

*Author: Dmitry Landy*
*Date: 3/7/2021*
---

### [1] Functional Requirements
This section specifies the necessary requirements for actions within the bug tracker application

#### [1.1] Administrator Account

**ID: FR1**

- TITLE: Locate the application
- DESC: An active internet connection will need to be available. The user will need to know the web address.
- RAT: To load the application that is hosted online.
- DEP: none

**ID: FR2**

- TITLE: Administrator Registration
- DESC: The user will need to go to the registration page of the app and input their information in the fields. For the role selection, they need to select "Admin". Once the fields are in, they will be able to press the "register" button to have their account created.
- RAT: Create an Administrator account
- DEP: FR1

**ID: FR3**

- TITLE: Administrator Log-In
- DESC: Once the admin is registered, they will be able to use their credentials they registered with to log in to the app. The will be able to input their username and password correctly and then select the login button.
- RAT: To login to their admin account on the app.
- DEP: FR2

**ID: FR4**

- TITLE: Group Creation
- DESC: When the admin logs in to their account for the first time, they will be assigned as the Administrator of a new group. 
- RAT: An Administrator will have to be in charge of a group of users within the app.
- DEP: FR3

**ID: FR5**

- TITLE: Manage Group Users
- DESC: A management page will be available on the admin account that allows them to add/remove users from the group.
- RAT: The admin can manage who is part of the group
- DEP: FR4

**ID: FR6**

- TITLE: Project Management: Add project
- DESC: Admin will be able to navigate to a project management page where they will be able to select "add" button to add a new project. They will have to fill out the form and then press "create" to create that project.
- RAT: To add projects for trouble tickets.
- DEP: FR3

**ID: FR7**

- TITLE: Project Management: Remove project
- DESC: Admin will be able to navigate to a project management page where they will be able to select "Remove" button to remove an existing project. When they do, they will be prompted "are you sure" to ensure its not a misclick. If the select yes, the project and all existing trouble tickets for it will be removed.
- RAT: To remove projects for trouble tickets.
- DEP: FR6

**ID: FR8**

- TITLE: Ticket Management: Create Trouble Ticket.
- DESC: Admins will be able to navigate to the "Ticket" page where they will be prompted with a ticket form. After all the fields are filled in appropriately, they will be able to submit the ticket by pressing "submit". An email will be sent to the admin of that project.
- RAT: To add a new trouble ticket
- DEP: FR3

**ID: FR9**

- TITLE: Ticket Management: Edit Status of Trouble Ticket.
- DESC: Admins will be able to navigate to the project management page where they will be able to select the project. Once they do, they will be able to select the "Edit Status" button and then change its status appropriately. 
- RAT: To Edit the status of a trouble ticket
- DEP: FR6

**ID: FR10**

- TITLE: Log Report
- DESC: Admins will be able to navigate to the "Report" page where they will be able to view the history of trouble ticket acitivity. They will also be able to filter through the history to find the information they are looking for (depending of the fields).
- RAT: View the log of bug tracking activity
- DEP: FR3

**ID: FR11**

- TITLE: Log Out
- DESC: Admins will be able to select the "log out" button on their UI where they will be prompted if they are sure. If they select "Yes" they will be logged out of the account and go back to the login screen.
- RAT: Log out of the account
- DEP: FR3


