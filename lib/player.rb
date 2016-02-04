class Player

  START_HP = 60

  attr_reader :name, :hit_points

  def initialize name, hit_points = START_HP
    @name = name
    @hit_points = hit_points
  end


  def receive_damage
    @hit_points-=10
  end
end