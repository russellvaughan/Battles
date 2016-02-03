require 'player'

describe Player do
  subject(:player1){described_class.new "Iryna"}
  subject(:player2){described_class.new "Barry"}

  describe "#name" do
    it "return Player's name" do
      expect(player1.name).to eq "Iryna"
    end
  end

  describe "#hit_points" do
    it "return Player's Hit Points" do
      expect(player1.hit_points).to eq described_class::START_HP
    end
  end

  describe "#attack" do
    it "confirm player hitted another player" do
      expect(player2).to receive(:receive_damage)
      player1.attack(player2)
    end
  end

  describe "#receive_damage" do
    it "reduce opponents HP" do
      expect{player2.receive_damage}.to change{player2.hit_points}.by(-10)
    end
  end

end