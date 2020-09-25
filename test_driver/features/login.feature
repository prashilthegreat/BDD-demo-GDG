Feature: Login

    As a user
    I want to be able to use my credentials to login
    So that I can visit the homepage

    Scenario: Logging in with credentials
        Given I am in the starting page
        And I scroll the introduction slider
        And I press the first login button
        And I see the login page
        And I enter my credentials
        When I press the second login button
        Then I expect to be in the home page