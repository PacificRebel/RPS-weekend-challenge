require 'sinatra/base'
# require 'lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

post '/names' do
  session[:player_1_name] = params[:player_1_name]
  session[:player_2_name] = params[:player_2_name]
  redirect '/play'
end

get '/play' do
  @player_1_name = session[:player_1_name]
  @player_2_name = session[:player_2_name]
  erb :play
  # redirect '/second_move'
end
#
# get '/second_move' do
#   @player_1_name = session[:player_1_name]
#   @player_2_name = session[:player_2_name]
#   erb :second_move
# end

run! if app_file == $0
end
