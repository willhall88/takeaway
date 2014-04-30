class Dish

  def initialize(name, price)
    @name = name
    @price = price
  end

  attr_reader :name
  attr_reader :price
end