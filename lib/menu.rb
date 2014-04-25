class Menu
  def initialize(menu = [])
    @menu = menu
  end

  attr_reader :menu

  def has_dishes?
    @menu
  end

  def list
    list = @menu.map {|dish| " #{dish.name} -- #{'%.2f' % dish.price} /n"}
    list.join
  end
end
