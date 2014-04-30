
require_relative 'menu'
require_relative 'dish'
require_relative 'order'
require_relative 'messenger'

class Takeaway

  def initialize
    # messenger = Messenger.new
    order = Order.new
  end

  def show(menu)
    menu.list
  end



  def user_total
    print"Please type the total for your order (£): "
    total = gets.chomp
  end

  def has_correct_total?(order)
    user_total.to_i == order.cost
  end

  def confirmation(order)
    raise "unfortunately your total was incorrect. the order cannot be placed" unless has_correct_total?(order)
    
    # messenger.confirmation(time)
  end

  def time
    hour = Time.new.hour + 1
    min = Time.new.min
    delivery_time = '%02d:%02d' % [hour, min] 
  end
end