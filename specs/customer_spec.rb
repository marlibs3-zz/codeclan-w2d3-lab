require('minitest/autorun')
require_relative('../customer.rb')
require_relative('../pub.rb')
require_relative('../drink.rb')
require_relative('../food.rb')

class TestCustomer < MiniTest::Test

  def setup

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

    @customer = Customer.new("Homer", 100, 42, 0)

  end

  def test_customer_getters
    assert_equal("Homer", @customer.name)
    assert_equal(100, @customer.wallet)
    assert_equal(42, @customer.age)
  end

  def test_buy_drink
    @customer.buy_drink(@wine)
    assert_equal(96, @customer.wallet)
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
    @customer.buy_food(@steamed_hams)
    assert_equal(96, @customer.wallet)
  end











end
