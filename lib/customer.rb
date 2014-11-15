require_relative 'order'
require_relative 'dish'

class Customer

    def order(order, dish)
      order.add(dish)
    end

    def place_order

    end

end
