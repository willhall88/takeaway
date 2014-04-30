
class Order

  def initialize
    @dishes = []
  end

  attr_accessor :dishes

  def add(selected_dish, quantity = 1)
    number = 1
    while number <= quantity 
      @dishes << selected_dish
      number += 1
    end
    dishes
  end

  def cost
    @dishes.inject(0){|acc, dish| acc + dish.price }
  end

  def list
     list = @dishes.map {|dish| "#{dish.name} -- £#{'%.2f' % dish.price} \n"}.join
     list = list << "Total = £#{'%.2f' % cost}"
     print "#{list}"
     list
  end

end