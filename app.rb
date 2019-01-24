require 'sinatra'

class Battle < Sinatra::Base
  attr_reader :names

enable :sessions
set :session_secret, "secret"


get '/' do
  erb(:index)
  end

post '/names' do
  session[:p1name] = params[:p1name]
  session[:p2name] = params[:p2name]
  redirect '/play'
end

get '/play' do
  @p1name = session[:p1name]
  @p2name = session[:p2name]
  @p2health = 60
  erb(:play)
end

# start the server if ruby file executed directly
run! if app_file == $0
end