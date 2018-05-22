class Bear

  attr_accessor :name, :type, :stomach

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def bear_name()
    return @name
  end

  def bear_type()
    return @type
  end

  def bear_has_empty_stomach()
    if @stomach.empty?
      return "Empty!"
    end
  end

  def bear_takes_fish(river)
    @stomach << river.yield_one_fish
    return @stomach.count
  end

  def bear_roar
    return "Roar"
  end

  def food_count
    return @stomach.count
  end

end
