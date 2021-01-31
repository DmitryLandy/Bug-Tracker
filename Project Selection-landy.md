## Project 2: Project Selection - Bug Tracker
## Author: Dmitry Landy
## Date: January 24, 2021

---

#### Introduction

After a careful review of the ideas in part 1, it was decided that a [bug tracker](https://en.wikipedia.org/wiki/Bug_tracking_system) application would be more useful than an application for a gallery or forum. Although the gallery application could work, it is not as beneficial as a bug tracker. A bug tracker is an application that is used to keep accountability for the trouble tickets that have been requested. This application requires a variety of functions to be present in order for it to be usable. Some of the features that this application will include are:

- Registration Process
- [Login Screen](https://youtu.be/n2FWwmgMKok)
- Demo Users
- Multiple Pages (homepage, current tickets, history, etc.)
- Settings/profile screen
- Add and edit trouble tickets
- Search/sort function
    
These features will be compiled together to create a fully comprehensive trouble ticket-tracking application. Because of the many features that will available, the user interface will have to be simple and organized to make the application easy to use. The rest of the document will break down the three phases for the development of this app.

#### Part 1: Data Phase

The first phase is the **data phase**, which specifies what kind of data will be in the database. There are a few things to consider for the application when planning for the tables in the database:

- Users
- Projects
- Tickets

The login process requires credentials for the users to be verified. If there are none, then the user must go through the registration process. This information for the user will have to be stored in a table of sorts. Additionally, there will be a profile page and settings for the user if they decide to change some of that information. Most of this should be stored in a user table.

The bug tracker application would have two main parts for tracking the tickets: the ticket and the project that ticket belongs to. The ticket will have specific information about the issues (ticket id, subject, content, date, etc.). This would likely have to be its own table. The projects would have similar information, but instead of the problem, it would contain ticket id's to indicate those tickets are part of the project. After all, there can be similar problems for different projects.

#### Part 2: Programming Phase

The second phase is the **programming phase**, which is used to process the various data for the application. The processing will involve interacting with the data from the database and modifying it appropriately to provide the user the desired result. The main processes will involve:

- Searching/sorting of the ticket
- Adding and editing the tickets
- Keeping the statistics of the ticket data for the tables/graphs
- Adding/editing user data.

Any data added to the application will be done manually by the user. Initially, there will not be any function to upload multimedia or files to the data (though that could change later). As the data is entered, it will be stored in the appropriate tables of the database. Each of the processes will involve manipulating the data in the database and then presenting the results (whether it's a permanent change or a simple query) to the user.


#### Part 3: Interface Phase

The third phase is the **interface phase**, which involves presenting the application with functional elements (e.g. graphs, buttons, text boxes, etc.). This phase determines how the application will appear to the user and how each element will interact with the rest of the elements of the application. The following are some of the elements that play an important role in the applications:

- Login page/ Registration elements
- Add/edit form for tickets or projects
- Search function
- Admin role management
- Quick tabs 

Each element of the application does need to work fully. The text boxes of a login page should show what is typed in, but that data should only be checked with that in the database when the login button is pressed. Similarly with the add/edit forms for the tickets and projects. Until the "submit change" button is clicked, the data in the text boxes is not updated to the database. The quick tabs for the different pages of the application will be use do navigate the pages. The administrator role will provide additional functionality to manage the users in their group and the data about the tickets. There will be additional UI elements for the administrator to perform these actions.

#### Conclusion

The bug tracker application is going to be a thorough trouble ticket management application that supports multiple user roles. The application will contain a variety of functions and user-friend interface. The many functions of the application will have to be carefully developed to ensure the application works fully. The development process will focus on three phases that will all interact with each other: data phase, programming phase, and interface phase. The data phase will ensure that the data, such as the user and ticket data, will be stored in the database appropriately. The programming phase will implement processing for the data to ensure that it is manipulated properly. The interface phase will ensure that each element of the user interface functions properly. Together, these phases will be used to develop a comprehensive bug tracking application.








