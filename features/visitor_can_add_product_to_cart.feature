@javascript
Feature: Visitor can add product to cart
As a visitor,
In order to select products I want to buy
I would like to be able to add products to an order

Background:
    Given the following products exists
        | name          |  price  |  description |
        | Pizza         |   10    |  spicy       |
        | Garlic bread  |   3     |  stinky      |  
        | Chocolate     |   5     |  fattening   |
    And I am on the "product" page

Scenario: Visitor can add product to cart
    When I click on "Add to Cart" on "Pizza"
    Then I should see "1 item"