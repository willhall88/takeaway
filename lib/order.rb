class Order

  def initialize
    @dishes = []
  end

  attr_accessor :dishes

  def add(dish, quantity = 1)
    number = 1
    while number <= quantity 
      @dishes << dish
      number += 1
    end
    dishes
  end

  def cost
    @dishes.inject(0){|acc, dish| acc + dish.price }
  end

end