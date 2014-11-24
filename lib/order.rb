class Order

  attr_reader :list, :total_price

  def initialize
    @list = []
    @total_price = 0
  end

  def add(dish, qty)
    qty.times { @list << dish } 
  end

  def total_price
    total_price = @list.reduce(0) {|sum, dish| sum + dish.price}
  end

  def ready?
    false
  end

end
