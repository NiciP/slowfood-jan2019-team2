Feature: Visitor can navigate pages on the website
    As a visitor,
    In order to navigate the site
    I would like to use a navbar

Scenario: Visitor is able to see the "login", "signin" and "checkout" buttons
    When I am on the "product" page 
    Then I should see "Log in"
    And I should see "Sign up"
    And I should see "Check out"