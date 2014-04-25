class Menu
  def initialize(menu = [])
    @menu = menu
  end

  attr_reader :menu

  def has_dishes?
    @menu
  end

end