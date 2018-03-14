class Customer

  attr_reader :name, :age
  attr_accessor :wallet, :drunkenness

  def initialize(name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness
  end

  def buy_drink(pub, drink_to_buy)
    pub.drinks.delete_if {|drinks| drinks == drink_to_buy}
    pub.till += drink_to_buy.price
    @wallet -= drink_to_buy.price
  end

  def can_buy_drink?
    @age >= 18 && @drunkenness < 8
  end

  def buy_drink(drink_to_buy)
    if can_buy_drink?
      @wallet -= drink_to_buy.price
      @drunkenness += drink_to_buy.alcohol_level
    end
  end

  def buy_food(food_to_buy)
    @wallet -= food_to_buy.price
    @drunkenness -= food_to_buy.rejuvenation_level
  end





















end
