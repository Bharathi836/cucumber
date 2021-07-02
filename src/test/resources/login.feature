Feature: login
@smoke
Scenario: user enters valid credentials to login
Given user is in login page
When user enters valid user name
And user clicks on continue button
And user enters valid password
And user clicks on login button
Then the home page should be displayed

@ft
Scenario Outline: user enters invalid credentials to login

Given user is in login page
When user enters invalid username "<username>"
And user clicks on continue button
And user enters invalid password "<password>"
And user clicks on login button
Then Home page should not be displayed "<expected_title>"

Examples:
|username | password   |expected_title|
|9972651840 |abcd|Amazon Sign-In|
|9972651840  |abcd123|Amazon Sign-In|
|9972651840  |hgtk123|Amazon Sign-In|

 