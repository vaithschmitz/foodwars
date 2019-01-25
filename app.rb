require "sinatra/base"
require_relative "./lib/player"
require_relative "./lib/game"

class Battle < Sinatra::Base
enable :sessions


get '/' do
  erb(:index)
  end

post '/names' do
  @p1 = Player.new(params[:p1name])
  @p2 = Player.new(params[:p2name])
  $game = Game.new(@p1, @p2)
  redirect '/play'
end

get '/play' do
  @p1_name = $game.p1.name
  @p2_name = $game.p2.name
  @p1_health = $game.p1.health
  @p2_health = $game.p2.health
  @turn = $game.turn.name
  @loser = $game.loser
  erb(:play)
end

post '/attack' do
  $game.attack
  redirect '/play'
end




# start the server if ruby file executed directly
run! if app_file == $0
end
