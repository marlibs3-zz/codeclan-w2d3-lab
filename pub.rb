class Pub

  attr_reader :name
  attr_accessor :till, :drinks, :food

  def initialize(name, till, drinks, food)
    @name = name
    @till = till
    @drinks = drinks
    @food = food
  end

  def sell_drink(drink_to_sell)
    if drink_to_sell.stock > 0
      # @drinks.delete_if {|drinks| drinks == drink_to_sell}
      @till += drink_to_sell.price
      drink_to_sell.stock -= 1
    end
  end

  def sell_food(food_to_sell)
    if food_to_sell.stock > 0
      # @food.delete_if {|food| food == food_to_sell}
      @till += food_to_sell.price
      food_to_sell.stock -= 1
    end
  end

  def check_total_value_drinks
    for drink in @drinks
      total_value_drinks = drink.price * drink.stock
    end
    return total_value_drinks
  end
end
