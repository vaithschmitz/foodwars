class Game
  
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
  end
  
  def attack(player)
    player.deduct
  end
 
end
