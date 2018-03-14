require('minitest/autorun')
require_relative('../customer.rb')
require_relative('../pub.rb')
require_relative('../drink.rb')

class TestCustomer < MiniTest::Test

  def setup

    pub_drinks = [
      @ipa = Drink.new("IPA", 5),
      @wine = Drink.new("Glass of wine", 4),
      @lager = Drink.new("Lager", 3),
      @cocktail = Drink.new("Cocktail", 6)
    ]

    @pub = Pub.new("The Kebab and Calculator", 0, pub_drinks)

    @customer = Customer.new("Homer", 100, 42)

  end

  def test_customer_getters
    assert_equal("Homer", @customer.name)
    assert_equal(100, @customer.wallet)
    assert_equal(42, @customer.age)
  end

  def test_buy_drink
    @customer.buy_drink(@pub, @wine)
    assert_equal(3, @pub.drinks.length)
    assert_equal(4, @pub.till)
    assert_equal(96, @customer.wallet)
  end



end
