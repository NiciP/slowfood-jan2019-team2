Feature: User can log in
   As a user,
   In order to login to be able to add order to cart
   I would like to login

    Background:
       Given I am on the "product" page
       And the following user exists
       |   email               |   password    |
       |   laura@gmail.com     |   0443431157  |
       And I click on "Log in" 

    Scenario: User can successfully login to account [Happy Path)
        When I fill in "Email" with "laura@gmail.com"
        And I fill in "Password" with "0443431157"
        And I click on "Log in"
        Then I should see "Signed in successfully."

    Scenario: User can not login to account with wrong email [Sad Path]
        When I fill in "Email" with "wrong"
        And I fill in "Password" with "0443431157"
        And I click on "Log in"
        Then I should not see "Signed in successfully."

    Scenario: User can not login to account with wrong password [Sad Path]
        When I fill in "Email" with "laura@gmail.com"
        And I fill in "Password" with "wrong"
        And I click on "Log in"
        Then I should not see "Signed in successfully."
