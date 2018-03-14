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
    @drinks.delete_if {|drinks| drinks == drink_to_sell}
    @till += drink_to_sell.price
  end

  def sell_food(food_to_sell)
    @food.delete_if {|food| food == food_to_sell}
    @till += food_to_sell.price
  end














end
