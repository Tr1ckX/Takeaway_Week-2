require_relative 'dish'

class Order

  attr_reader :list
  attr_reader :total_price

  def initialize
    @list = []
    @total_price = 0
  end

  def add(dish, qty)
    qty.times { @list << dish }
    @total_price += dish.price * qty
  end

end
