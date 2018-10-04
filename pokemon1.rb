class Pokemon
  attr_accessor :attack_point, :hit_point

  def initialize(name,attack_point, hit_point)
    @name = name
    @attack_point = attack_point
    @hit_point = hit_point
  end
end





pokemon = Pokemon.new('ぴかちゅう', 13,30)
pokemon.name
