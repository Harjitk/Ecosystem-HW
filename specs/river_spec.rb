require("minitest/autorun")
require("minitest/rg")

require_relative("../river.rb")
require_relative("../fish.rb")
require_relative("../bear.rb")


class RiverTest < MiniTest::Test

  def setup()
    @river = River.new("Amazon", fish)
    @bear = Bear.new("Yogi", "Grizzly")
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
    @fish3 = Fish.new("Bubbles")
    @fish4 = Fish.new("Ray")
    @fish5 = Fish.new("Marlin")
    fish = [@fish1, @fish2, @fish3, @fish4, @fish5]

  end

  def test_river_name
    assert_equal("Amazon", @river.name)
  end

  def test_river_has_fish
    assert_equal(5, @river.river_has_fish)
  end

  def test_yield_one_fish
    assert_equal(@fish5, @river.yield_one_fish)
    assert_equal(4, @river.river_has_fish)
  end

end
