class Player
  attr_reader :name, :health

  def initialize(name, health = 100)
    @name = name
    @health = health
  end

  def deduct
    @health -= 10
  end
  
  def is_dead?
    @health <= 0 
  end

end
