require "sinatra/base"
require_relative "./lib/player"

class Battle < Sinatra::Base
enable :sessions


get '/' do
  erb(:index)
  end

post '/names' do
  $p1 = Player.new(params[:p1name])
  $p2 = Player.new(params[:p2name])
  redirect '/play'
end

get '/play' do
  @p1_name = $p1.name
  @p2_name = $p2.name
  @p2_health = 60
  erb(:play)
end

get '/attack' do
  @p1_name = $p1.name
  @p2_name = $p2.name
  erb(:attack)
end




# start the server if ruby file executed directly
run! if app_file == $0
end
