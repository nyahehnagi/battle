class Player

  DEFAULT_DAMAGE = 10

  attr_reader :name, :hit_points

  def initialize(name = "", hit_points = 100)
    @name = name
    @hit_points = hit_points
  end

  def deduct_hit_points(amount)
    @hit_points -= amount
  end

  def attack(player)
    player.deduct_hit_points(DEFAULT_DAMAGE)
  end
end