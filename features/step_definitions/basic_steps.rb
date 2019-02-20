Given("the following products exists") do |table|
  table.hashes.each do |product|
    FactoryBot.create(:product, product)
  end 
end

When("I am on the {string} page") do |page|
  case page
  when "product" 
    visit products_path
  else 
    return false 
  end
end  

When("I click on {string}") do |button_name|
    click_on button_name
end

When("I fill in {string} with {string}") do |field, input|
    fill_in field, with: input
end

Then("I should add the product to my cart") do
  pending # Write code here that turns the phrase above into concrete actions
end

