class Player

  attr_reader :name, :hit_points

  def initialize(name = "", hit_points = 100)
    @name = name
    @hit_points = hit_points
  end

  def deduct_hit_points(amount)
    @hit_points -= amount
  end

end