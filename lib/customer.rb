# require_relative 'order'

class Customer

    attr_reader :my_order

    def new_order
      @my_order = Order.new
    end

    def order(dish, qty, menu)
      @my_order.add(dish, qty, menu)
    end

    def place_order(sum, restaurant, customer_number)
      raise "Price not matching!" unless sum == @my_order.total_price
      restaurant.send_confirmation(customer_number)
    end

end
