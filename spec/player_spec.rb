require 'player'

describe Player do
  subject(:player){described_class.new "Iryna"}

  it "return Player's name" do
    expect(player.name).to eq "Iryna"
  end
end