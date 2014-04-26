
class Takeaway

  def show(menu)
    menu.list
  end

  def place(order)
    puts "Please enter your dish:"
    dish = gets.chomp
    puts "please enter the quantity:"
    quantity = gets.chomp

    order.add(dish, quantity)
    order.list
    order.cost
  end

  def time
    hour = Time.new.hour + 1
    min = Time.new.min
    delivery_time = '%02d:%02d' % [hour, min] 
  end
end