  Then("I should see {string} for {string}") do |info, product|
    dish = Product.find_by(name: product)
    dom_section = "#product_#{dish.id}"
    within(dom_section) do 
      expect(page).to have_content info
    end
  end  

  