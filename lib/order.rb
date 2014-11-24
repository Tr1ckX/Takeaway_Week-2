class Order

  attr_reader :list, :total_price

  def initialize
    @list = []
    @total_price = 0
  end

  def add(dish, qty, menu)
    qty.times { @list << dish } if menu.dishes.include?(dish)
    @total_price += dish.price * qty
  end

end
