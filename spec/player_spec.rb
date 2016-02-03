require 'player'

describe Player do 

subject(:player) {described_class.new("Tom")}

	it 'returns name' do 
	expect(player.name).to eq "Tom"
	end	


end 