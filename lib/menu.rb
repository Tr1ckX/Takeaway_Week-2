class Menu

  attr_reader :dishes

  def initialize
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def delete_dish(dish)
    @dishes.delete(dish)
  end

  def list
    @dishes.each{ |dish| puts dish.name, dish.price }
  end

end
