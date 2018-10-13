class Menu
  attr_reader :menu
  def initialize(menu = { "soup" => 5 })
    @menu = menu
  end
end
