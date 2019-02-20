Feature: Visitor can see a list of products
    As a visitor,
    In order to get an overview of the restaurants products
    I would like to be able to see a menu

    Background: 
        Given the following products exists
            | name          |  price  |  description |
            | Pizza         |   10    |  spicy       |
            | Garlic bread  |   3     | stinky       |  
            | Chocolate     |   5     | fattening    |


    Scenario: A visitor can see a list of products to choose from
        When I am on the "product" page
        Then I should see "Pizza"
        And I should see "Garlic bread"
        And I should see "Chocolate"
        And I should see "10 SEK" for "Pizza"
        And I should see "spicy" for "Pizza"
        And I should see "3 SEK" for "Garlic bread"
        And I should see "stinky" for "Garlic bread"
        And I should see "5 SEK" for "Chocolate"
        And I should see "fattening" for "Chocolate"