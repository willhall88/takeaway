class Messenger
  def time
    hour = Time.new.hour
    min = Time.new.min
    delivery_time = "#{hour +1}:#{min}"
  end
end