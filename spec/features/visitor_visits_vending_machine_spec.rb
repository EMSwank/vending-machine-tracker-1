require 'rails_helper'

describe "A Visitor" do
  context "visits a vending machine show page" do
    it "sees the name of all of the snacks associated with that vending machine along with their price" do
      owner = Owner.create(name: "jim")
      machine = owner.machines.create(location: 'here')
      snack1 = machine.snacks.create(name: 'kit-kat', price: 200)
      snack2 = machine.snacks.create(name: 'snickers', price: 300)

      visit machine_path(machine)

      expect(page).to have_content("All Snacks") 
      expect(page).to have_content(snack1.name) 
      expect(page).to have_content(snack2.name) 
      expect(page).to have_content(snack1.price)
      expect(page).to have_content(snack2.price)

    end
  end
end


