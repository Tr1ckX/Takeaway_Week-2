class Order

  attr_reader :items

  def initialize
    @items = {}
  end

  def add(dish, qty)
    @items[dish] = qty
  end

  def total
    @items.inject(0) do |total, (dish, qty)|
      total + dish.price * qty
    end
  end

  def list
    @items.each{ |k,v| puts k.name,v }
  end

end
