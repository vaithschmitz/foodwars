require 'player'

describe Player do
  subject(:dave) { Player.new('Dave') }

  context '#name' do
    it 'returns the name' do
      expect(dave.name).to eq 'Dave'
    end
  end
end