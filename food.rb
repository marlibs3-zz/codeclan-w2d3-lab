class Food

attr_accessor :name, :price, :rejuvenation_level
attr_accessor :stock

  def initialize(name, price, rejuvenation_level, stock)
    @name = name
    @price = price
    @rejuvenation_level = rejuvenation_level
    @stock = stock
  end

end
