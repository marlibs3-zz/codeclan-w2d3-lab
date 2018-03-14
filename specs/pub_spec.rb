require('minitest/autorun')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../food.rb')

class TestPub < MiniTest::Test

  def setup

    # stock_hash = {
    #   name: "IPA", amount: 2,
    #   name: "Glass", amount: 2
    # }

    pub_drinks = [
      @ipa = Drink.new("IPA", 5, 3),
      @wine = Drink.new("Glass of wine", 4, 4),
      @lager = Drink.new("Lager", 3, 2),
      @cocktail = Drink.new("Cocktail", 6, 5)
    ]

    pub_food = [
      @steamed_hams = Food.new("Steamed Hams", 4, 3),
      @steamed_clams = Food.new("Steamed Clams", 5, 5),
      @grilled_burgers = Food.new("Grilled Burgers", 2, 3),
      @gruel = Food.new("Gruel", 1, 1)
    ]

    @pub = Pub.new("The Kebab and Calculator", 0, pub_drinks, pub_food)
  end

  def test_pub_getters
    assert_equal("The Kebab and Calculator", @pub.name)
    assert_equal(0, @pub.till)
    assert_equal(4, @pub.drinks.count)
    assert_equal(4, @pub.food.count)
  end

  def test_sell_drink
    @pub.sell_drink(@wine)
    assert_equal(4, @pub.till)
  end

  def test_sell_food
    @pub.sell_food(@steamed_hams)
    assert_equal(4, @pub.till)
  end
















end
