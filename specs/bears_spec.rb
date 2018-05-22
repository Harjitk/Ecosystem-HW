require("minitest/autorun")
require("minitest/rg")

require_relative("../bear.rb")
require_relative("../fish.rb")
require_relative("../river.rb")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Yogi", "grizzly")
    @river = River.new("Amazon", fish)
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
    @fish3 = Fish.new("Bubbles")
    @fish4 = Fish.new("Ray")
    @fish5 = Fish.new("Marlin")
    fish = [@fish1, @fish2, @fish3, @fish4, @fish5]
  end

  def test_bear_name
    assert_equal("Yogi", @bear.bear_name)
  end

  def test_bear_type
    assert_equal("grizzly", @bear.bear_type)
  end

  def test_bear_has_empty_stomach
    assert_equal("Empty", @bear.bear_has_empty_stomach)
  end

  def test_bear_takes_fish
    assert_equal(1, @bear.bear_takes_fish(@river))
  end

  def test_bear_can_roar
    assert_equal("Roar", @bear.bear_roar)
  end

  def test_food_count_empty
    assert_equal(0, @bear.food_count)
  end


end
