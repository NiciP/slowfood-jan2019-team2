
Feature: Visitor can add product to cart
As a visitor,
In order to select products I want to buy
I would like to be able to add products to an order

Background:
    Given I am on the "product" page
    And the following products exists
        | name          |  price  |  description |
        | Pizza         |   10    |  spicy       |
        | Garlic bread  |   3     |  stinky      |  
        | Chocolate     |   5     |  fattening   |

Scenario: Visitor can add product to cart
    When I click on "Add to Cart"
    Then I should add the product to my cart