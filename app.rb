require 'sinatra/base'
require 'lib/player'
require 'lib/game'

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
end

get '/second_move' do
  @player_1_name = session[:player_1_name]
  @player_2_name = session[:player_2_name]
  erb :second_move
end

get '/result' do
  @player_1_name.calculation = params[:player_1_name]
  @player_2_name.calculation = params[:player_2_name]
  # Player.result
  # how do I get player_1_name's radio button choice here?
  # something.result from lib/player will give me winner

  erb :result
end

run! if app_file == $0
end
