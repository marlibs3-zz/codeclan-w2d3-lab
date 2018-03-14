require('minitest/autorun')
require_relative('../customer.rb')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../food.rb')

class TestCustomer < MiniTest::Test

  def setup

    pub_drinks = [
      @ipa = Drink.new("IPA", 5, 3, 100),
      @wine = Drink.new("Glass of wine", 4, 4, 100),
      @lager = Drink.new("Lager", 3, 2, 100),
      @cocktail = Drink.new("Cocktail", 6, 5, 100)
    ]

    pub_food = [
      @chicken_burger = Food.new("Chicken burger", 6, 3, 20),
      @steak_pie = Food.new("Steak pie", 7, 5, 20),
      @pizza = Food.new("Pizza", 8, 3, 20),
      @tacos = Food.new("Tacos", 5, 1, 20)
    ]

    @pub = Pub.new("The Beveridge Tap", 0, pub_drinks, pub_food)

    @customer = Customer.new("Andrew", 100, 25, 0)

  end

  def test_customer_getters
    assert_equal("Andrew", @customer.name)
    assert_equal(100, @customer.wallet)
    assert_equal(25, @customer.age)
  end

  def test_buy_drink
    @customer.buy_drink(@ipa)
    assert_equal(95, @customer.wallet)
  end

  def test_can_buy_drink?
    assert_equal(true, @customer.can_buy_drink?)
  end

  def test_can_buy_drink__drunkenness
    @customer.buy_drink(@wine)
    @customer.buy_drink(@cocktail)
    assert_equal(false, @customer.can_buy_drink?)
  end

  def test_buy_food
    @customer.buy_food(@pizza)
    assert_equal(92, @customer.wallet)
  end

end
