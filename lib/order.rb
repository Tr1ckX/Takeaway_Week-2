require_relative 'dish'
require_relative 'menu'

class Order

  attr_reader :list, :total_price

  def initialize
    @list = []
    @total_price = 0
    @ready = false
  end

  def add(dish, qty, menu)
    qty.times { @list << dish } if menu.dishes.include?(dish)
    @total_price += dish.price * qty
  end

  def ready?
    @ready
  end

  def ready!
    @ready = true
  end

end
