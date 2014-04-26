
class Takeaway

  def show(menu)
    menu.list
  end

  def place_order
    puts"Please type your dish of choice"
    dish = gets.chomp
    puts"Please type the quantity you want"
    quantity = gets.chomp
  end
  

  def time
    hour = Time.new.hour + 1
    min = Time.new.min
    delivery_time = '%02d:%02d' % [hour, min] 
  end
end