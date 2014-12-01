class Customer

    attr_reader :order, :phone_number

    def initialize(phone_number)
      @phone_number = phone_number
    end

    def create_order
      @order = Order.new
    end

    def add_item(dish, qty)
      @order.add(dish, qty)
    end

    def place_order(total, restaurant)
      if (total == order.total)
        restaurant.send_order(@phone_number)
      else
        raise "Wrong total!"
      end
    end
end
