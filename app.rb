require 'sinatra/base'
# require_relative 'lib/player'
# require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    "Testing infrastructure working!"
    # erb: index
  end

run! if app_file == $0
end
