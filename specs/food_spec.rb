require('minitest/autorun')
require_relative('../food.rb')

class TestFood < MiniTest::Test

  def setup
    @food = Food.new("Steamed Hams", 4, 3)
  end

  def test_food_getters
    assert_equal("Steamed Hams", @food.name)
    assert_equal(4, @food.price)
    assert_equal(3, @food.rejuvenation_level)
  end

end
