class Order

  attr_accessor :list

  def initialize
    @list = []
  end

  def add(dish)
    @list << dish
  end

end
