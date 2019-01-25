class Game
  attr_reader :p1, :p2, :turn, :loser
  def initialize(p1, p2)
    @p1 = p1
    @p2 = p2
    @players = [p1,p2]
    @cp = 1
    @turn = 0
    @loser
  end
  
  def attack
    @players[@cp].deduct
    if  !@players[@cp].is_dead?
     switch_players
    else 
      @loser = @players[@cp].name
    end
  end
  
  def turn 
    @players[@turn]
  end 

  def switch_players
    @cp == 0 ? @cp = 1 : @cp = 0 
    @turn == 0 ? @turn = 1 : @turn = 0
  end

end
