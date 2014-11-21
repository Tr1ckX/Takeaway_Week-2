class Restaurant

  def send_delivery(customer_number)
    text = Message.new
    text.send(customer_number)
  end


end
