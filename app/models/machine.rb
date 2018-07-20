class Machine < ApplicationRecord
  belongs_to :owner
  has_many :machine_snacks
  has_many :snacks, through: :machine_snacks

    describe 'instance methods' do
    it 'returns the average price of snacks' do
      owner = Owner.create(name: "jim")
      machine = owner.machines.create(location: 'here')
      snack1 = machine.snacks.create(name: 'kit-kat', price: 100)
      snack2 = machine.snacks.create(name: 'snickers', price: 200)
      average_snack_price = 150

      expect(machine.average_snack_price).to eq(average_snack_price)
    end
  end

end
