require 'rails_helper'

RSpec.describe Machine, type: :model do
  describe 'instance methods' do
    context ".average_snack_price" do
      it 'returns average_snack_price' do
      owner = Owner.create(name: "jim")
      machine = owner.machines.create(location: 'here')
      snack1 = machine.snacks.create(name: 'kit-kat', price: 100)
      snack2 = machine.snacks.create(name: 'snickers', price: 200)
      average_snack_price = 150

      expect(machine.average_snack_price).to eq(average_snack_price) 
      end
    end
    
  end
end
