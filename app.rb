require 'sinatra'

class Battle < Sinatra::Base
  attr_reader :names

get '/' do
  erb(:index)
  end

post '/names' do
  @p1name = params[:p1name]
  @p2name = params[:p2name]
  erb(:play)
end

# start the server if ruby file executed directly
run! if app_file == $0
end