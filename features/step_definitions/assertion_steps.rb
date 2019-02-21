  Then("I should see {string} for {string}") do |info, product|
    dish = Product.find_by(name: product)
    dom_section = "#product_#{dish.id}"
    within(dom_section) do 
      expect(page).to have_content info
    end
  end  

  Then("I should add the product to my cart") do
    pending # Write code here that turns the phrase above into concrete actions
  end
  
  Then("I should see {string}") do |expected_content|
    expect(page).to have_content expected_content
  end