require 'rails_helper'

describe "A Visitor" do
  context "visits a vending machine show page" do
    it "sees the name of all of the snacks associated with that vending machine along with their price" do
      owner = Owner.create(name: "jim")
      machine = owner.machines.create(location: 'here')
      snack1 = machine.snacks.create(name: 'kit-kat')
      snack2 = machine.snacks.create(name: 'snickers')

      visit machine_path(machine)

      expect(page).to have_content("All Snacks") 
      expect(page).to have_content(snack1.name) 
      expect(page).to have_content(snack2.name) 
    end
  end
end


