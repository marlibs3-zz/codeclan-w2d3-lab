require('minitest/autorun')
require_relative('../pub.rb')
require_relative('../drink.rb')

class TestPub < MiniTest::Test

  def setup

    pub_drinks = [
      Drink.new("IPA", 5, 3),
      Drink.new("Glass of wine", 4, 4),
      Drink.new("Lager", 3, 2),
      Drink.new("Cocktail", 6, 5)
    ]

    @pub = Pub.new("The Kebab and Calculator", 0, pub_drinks)
  end

  def test_pub_getters
    assert_equal("The Kebab and Calculator", @pub.name)
    assert_equal(0, @pub.till)
    assert_equal(4, @pub.drinks.count)
  end

end
