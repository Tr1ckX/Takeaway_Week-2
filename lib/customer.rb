require_relative 'order'
require_relative 'menu'
require_relative 'dish'

class Customer

    attr_reader :my_order

    def new_order
      @my_order = Order.new
    end

    def order(dish, qty, menu)
      @my_order.add(dish, qty) if menu.menu.include?(dish)
    end

    def place_order(sum)
      raise "Price not matching!" unless sum == @my_order.total_price
      @my_order.ready!
    end

end
