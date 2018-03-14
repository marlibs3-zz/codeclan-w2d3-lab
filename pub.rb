class Pub

attr_reader :name
attr_accessor :till, :drinks, :food

  def initialize(name, till, drinks, food)
    @name = name
    @till = till
    @drinks = drinks
    @food = food
  end

end
