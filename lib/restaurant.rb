class Restaurant

  attr_reader :menu

  def initialize(menu)
    @menu = menu
  end

  def send_order(phone_number)
    #check_order(order)
    send_confirmation(phone_number)
  end

  # def check_order(order)
  #   order.items.each{ |dish| @menu.include?dish }
  # end

  def send_confirmation(phone_number)
    text = TextMessage.new
    text.send(phone_number)
  end

end
