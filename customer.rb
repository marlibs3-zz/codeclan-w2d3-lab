class Customer

  attr_reader :name, :age
  attr_accessor :wallet, :drunkenness

  def initialize(name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness
  end

  def can_buy_drink?
    @age >= 18 && @drunkenness < 8
  end

  def buy_drink(drink_to_buy)
    if can_buy_drink?
      if drink_to_buy.stock > 0
        @wallet -= drink_to_buy.price
        @drunkenness += drink_to_buy.alcohol_level
      end
    end
  end

  def buy_food(food_to_buy)
    if food_to_buy.stock > 0
      @wallet -= food_to_buy.price
      @drunkenness -= food_to_buy.rejuvenation_level
    end
  end

end
