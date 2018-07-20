require 'rails_helper'

describe "A Visitor" do
  context "visits a vending machine show page" do
    it "sees the name of all of the snacks associated with that vending machine along with their price" do
      snack1 = Snack.create(name: 'kit-kat')
      snack2 = Snack.create(name: 'snickers')

      visit machines_path

      expect(page).to have_content(snack1) 
      expect(page).to have_content(snack2) 
    end
  end
end


=begin
As a user
When I visit a specific vending machine page
I see the name of all of the snacks associated with that vending machine along with their price
As a user
When I visit a specific vending machine page
I also see an average price for all of the snacks in that machine
=end