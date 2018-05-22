
class River

  attr_reader :name, :fish

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def name
    return @name
  end

  def river_has_fish
    return @fish.count
  end

  def yield_one_fish
    return @fish.pop
  end

end
