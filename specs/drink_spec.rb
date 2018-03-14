require('minitest/autorun')
require_relative('../drink.rb')

class TestDrink < MiniTest::Test

  def setup
    @drink = Drink.new("IPA", 5)
  end

  def test_drink_getters
    assert_equal("IPA", @drink.name)
    assert_equal(5, @drink.price)
  end

end
