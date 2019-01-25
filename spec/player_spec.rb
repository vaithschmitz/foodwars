require 'player'

describe Player do
  subject(:dave) { Player.new('Dave')}
  subject(:dan) {Player.new('Dan')}

  context '#name' do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end
  context "Attacks" do 
    it "attacking p2 deducts 10 health" do
      expect{dave.attack(dan)}.to change{dan.health}.by -10
    end
  end
end