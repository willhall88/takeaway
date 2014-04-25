class Order

  def initialize
    @dishes = []
  end

  def dishes
    @dishes
  end

  def add(dish, quantity)
    @dishes << dish * quantity
    dishes
  end

  def cost
    @dishes.inject(0){|acc, dish| acc + dish.price }
  end

end