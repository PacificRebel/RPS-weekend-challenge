require 'player'

describe Player do

  subject(:player) {described_class.new("Evz")}

  it 'knows its name' do

    expect(player.name).to eq "Evz"
  end


  end
