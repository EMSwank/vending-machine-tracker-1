require 'rails_helper'

describe "A User" do
  context "visits a machine show page" do
    it "sees the average price for all snacks in that machine" do
      user = User.create(name: 'bob')
      owner = Owner.create(name: "jim")
      machine = owner.machines.create(location: 'here')
      snack1 = machine.snacks.create(name: 'kit-kat', price: 100)
      snack2 = machine.snacks.create(name: 'snickers', price: 200)
      average_snack_price = 150

      visit machine_path(machine)

      expect(page).to have_content("Average Snack Price: #{average_snack_price}")
    end
  end
end

=begin
As a user
When I visit a specific vending machine page
I also see an average price for all of the snacks in that machine
=end