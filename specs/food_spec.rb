require('minitest/autorun')
require_relative('../food.rb')

class TestFood < MiniTest::Test

  def setup
    @food = Food.new("Chicken burger", 4, 3, 20)
  end

  def test_food_getters
    assert_equal("Chicken burger", @food.name)
    assert_equal(4, @food.price)
    assert_equal(3, @food.rejuvenation_level)
    assert_equal(20, @food.stock)
  end

end
