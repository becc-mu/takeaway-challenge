class Order

  attr_reader :dishes

  def initialize(menu)
    @dishes = {}
    @menu = menu

  end

  def add(dish, quantity)
    fail "#{dish.capitalize} is not available." unless menu.dish?(dish)
    dishes[dish] = quantity

  end

  def total
    item_totals.inject(:+)
  end

  private

  attr_reader :menu

  def item_totals
    dishes.map do |dish, quantity|
      menu.price(dish) * quantity
    end
  end
end
