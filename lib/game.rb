require_relative 'player'

class Game

  attr_reader :player_1_name, :player_2_name, :player_2_wins, :player_1_wins

  def self.create(player_1_name, player_2_name)
    @game = Game.new(player_1_name, player_2_name)
  end

  def self.instance
    @game
  end

  def initialize(player_1_name, player_2_name)
    @player_1_name = player_1_name
    @player_2_name = player_2_name
    @player_1_move = player_1_move
    @player_2_move = player_2_move
  end

    def calculation
      if player_1_move == "rock" && player_2_move == "scissors"
        @result = @player_1_wins
      end
      if player_1_move == "rock" && player_2_move == "paper"
        @result = @player_2_wins
      end
      if player_1_move == "scissors" && player_2_move == "rock"
        @result = @player_2_wins
      end
      if player_1_move == "scissors" && player_2_move == "paper"
        @result = @player_1_wins
      end
      if player_1_move == "paper" && player_2_move == "rock"
        @result = @player_1_wins
      end
      if player_1_move == "paper" && player_2_move == "scissors"
        @result = @player_2_wins
      end
      if player_1_move == player_2_move
        @result = @draw
      end
    end
end
