class Game

  attr_reader :players



  def initialize(player1,player2)
   	@players = [player1,player2]
  end

	def attack(player)
	player.receive_damage
	switch_player
	end


private 

	def switch_player
	@players.reverse!
	end

end
