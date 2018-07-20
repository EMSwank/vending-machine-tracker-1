require 'rails_helper'

describe "A User" do
  context "visits a snack show page" do
    it "sees the name and price of that snack" do
      user = User.create(name: 'bob')
      owner = Owner.create(name: "jim")
      snack = Snack.create(name: 'kit-kat', price: 100)
      machine1 = snack.machines.create(location: 'here')
      machine2 = snack.machines.create(location: 'there')

      visit snack_path(snack)

      expect(page).to have_content(snack.name)
      expect(page).to have_content(snack.price)
    end
  end
end


=begin

As a user
When I visit a specific snack page
I see the price for that snack
I see a list of locations with vending machines that carry that snack
I see the average price for snacks in those vending machines
And I see a count of the different kinds of items in that vending machine.

=end