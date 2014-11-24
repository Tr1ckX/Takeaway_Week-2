class Restaurant

  def send_confirmation(customer_number)
    text = TextMessage.new
    text.send(customer_number)
  end


end
