# README

This Rails 6 API was developed for Franklin University Nursing Department. It was part of a capstone project and is one of 3 APIs I built for project. 

## Project Description 

The API was built in Rails without a frontend, which I have since built given the design team's graphics/interface to demonstrate how the API will be used.

The original project I built was a front and backend API in Rails, that had user data collection in mind for the overseeing body of educators. In this way, the application was designed with an administrative dashboard that allowed administrators to collect and query data about the assessments to learn about where the students need additional help.

That project is kept in a private repository, but can be viewed if a request to see it is made.

The testing was developed and performed using RSPEC and authentication was established using a JWT auth token. This respository includes generic auth data which will not be used in production, however a production API is hosted on Heroku for the university to use as they see fit.

After logging in, a user is directed to the You Be The Judge page, to begin their assessment. An image is clicked and a modal appears with the corresponding answer options. The student must evaluate the imagery, and determine which diagnosis they believe corresponds with the image.

The application is built with a feedback system in place to help encourage a formative learning experience. When the user answers the question incorrectly, they are given feedback to help them reevaluate their choice and try again. Additionally, a modal window pops up for the correct answer as well which allows the user to move on to the next question.

This continues until the user has completed the assessment, at which time the application records the data for the admins to review.

Below is a simple animation to help visualize the Application in action utilizing the API.


![AssessmentDemo](https://user-images.githubusercontent.com/84540978/157961404-d6f617ea-3843-43e0-8657-8bc1b4dea713.gif)


