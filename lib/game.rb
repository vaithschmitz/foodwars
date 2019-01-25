class Game
  attr_reader :p1, :p2
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @players = [p1,p2]
    @cp = 0
  end
  
  def attack
    @players[@cp].deduct
    @cp == 0 ? @cp = 1 : @cp = 0 
  end
 
end
