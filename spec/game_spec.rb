require 'game'

describe Game do 
  context "lose" do
    it 'expect player to lose if HP <= 0' do
      p1 = double('p1')
      p2 = double('p2')
      game = Game.new(p1, p2)
      allow(p2).to receive(:health).and_return 10
      p p2.health
    end
  end
end