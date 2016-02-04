require "game"

describe Game do 

	subject(:game) {described_class.new}

	let(:player1) {double(:player1, :receive_damage => true)}
	# let(:player2) {double(:player2)}

	describe "#attack" do
		it 'one player attacks another' do 
			expect(player1).to receive(:receive_damage)
			game.attack(player1)
		end 
	end

end 