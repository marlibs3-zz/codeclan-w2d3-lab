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

  def buy_drink(pub, drink_to_buy)
    if can_buy_drink?
      # removie drink from pub inventory
      pub.drinks.delete_if {|drinks| drinks == drink_to_buy}
      # take money from customer
      @wallet -= drink_to_buy.price
      # put money in till
      pub.till += drink_to_buy.price
      # add alcohol level to customer drunkenness
      @drunkenness += drink_to_buy.alcohol_level
    end
  end

end
