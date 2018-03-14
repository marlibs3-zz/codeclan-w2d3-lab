require('minitest/autorun')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../food.rb')

class TestPub < MiniTest::Test

  def setup

    # stock_hash = {
    #   name: "IPA", stock: [],
    #   name: "White wine", stock: []
    #   name: "Lager", stock: []
    #   name: "Cocktail", stock: []
    # }

    pub_drinks = [
      @ipa = Drink.new("IPA", 5, 3),
      @wine = Drink.new("White wine", 4, 4),
      @lager = Drink.new("Lager", 3, 2),
      @cocktail = Drink.new("Cocktail", 6, 5)
    ]

    pub_food = [
      @chicken_burger = Food.new("Chicken burger", 6, 3),
      @steak_pie = Food.new("Steak pie", 7, 5),
      @pizza = Food.new("Pizza", 8, 3),
      @tacos = Food.new("Tacos", 5, 1)
    ]

    @pub = Pub.new("The Beveridge Tap", 0, pub_drinks, pub_food)
  end

  def test_pub_getters
    assert_equal("The Beveridge Tap", @pub.name)
    assert_equal(0, @pub.till)
    assert_equal(4, @pub.drinks.count)
    assert_equal(4, @pub.food.count)
  end

  def test_sell_drink
    @pub.sell_drink(@wine)
    assert_equal(4, @pub.till)
  end

  def test_sell_food
    @pub.sell_food(@pizza)
    assert_equal(8, @pub.till)
  end
















end
