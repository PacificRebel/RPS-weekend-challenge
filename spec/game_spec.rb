require 'game'

describe Game do
  describe '#calculation' do
    it 'compares player_1_move and player_2_move to decide who wins' do
      expect(Game.new).to receive { :calculation }
    end
  end
end
