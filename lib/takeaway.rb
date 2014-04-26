
class Takeaway

  def initialize
    # @messenger = Messenger.new
  end


  # def options
  #   puts "======================================"
  #   puts "Enter a number to go an option"
  #   puts "1. View Menu"
  #   puts "2. Order an item"
  #   puts "3. View order"
  #   puts "4. Exit"
  #   gets.chomp
  # end

  def show(menu)
    menu.list
  end

  def user_input
    print"Please type your dish of choice  "
    @dish = gets.chomp
    print"Please type the quantity you want  "
    @quantity = STDIN.gets.chomp
  end

  def place(order)
    user_input
    order.add(@dish, @quantity)
  end
  
  def user_total
    print"Please type the total for your order (£): "
    total = gets.chomp
  end

  def has_correct_total?(order)
    user_total == order.cost
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