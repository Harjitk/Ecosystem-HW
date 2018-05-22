
require("minitest/autorun")
require("minitest/rg")

require_relative("../fish.rb")
require_relative("../river.rb")
require_relative("../bear.rb")

class FishTest < MiniTest::Test

  def setup
    @fish1 = Fish.new("Nemo")
    @fish2 = Fish.new("Dory")
    @fish3 = Fish.new("Bubbles")
    @fish4 = Fish.new("Ray")
    @fish5 = Fish.new("Marlin")
  end

  def test_fish_name
    assert_equal("Dory", @fish2.fish_name)
  end

end
