class Food

attr_reader :name, :price, :rejuvenation_level, :stock

  def initialize(name, price, rejuvenation_level, stock)
    @name = name
    @price = price
    @rejuvenation_level = rejuvenation_level
    @stock = stock
  end

end
