class Customer

attr_reader :name, :age
attr_accessor :wallet

  def initialize(name, wallet, age)
    @name = name
    @wallet = wallet
    @age = age
  end

  def buy_drink(pub, drink_to_buy)
    pub.drinks.delete_if {|drinks| drinks == drink_to_buy}
    pub.till += drink_to_buy.price
    @wallet -= drink_to_buy.price
  end

end
