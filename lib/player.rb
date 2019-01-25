class Player
  attr_reader :name, :health

  def initialize(name, health = 100)
    @name = name
    @health = health
  end

  def attack(player)
    player.deduct
  end
 
  def deduct
    @health -= 10
  end
end
