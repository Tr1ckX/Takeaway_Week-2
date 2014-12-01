require './lib/customer'

describe Customer do

  let(:customer)   { Customer.new(44) }
  let(:my_order)   { double :my_order   }
  let(:dish)       { double :dish       }
  let(:qty)        { double :qty        }
  let(:restaurant) { double :restaurant }

  before do
    allow(Order).to receive(:new).and_return(my_order)
    customer.create_order
  end

  it 'should have an order list when he creates one' do
    expect(customer.order).to eq(my_order)
  end

  it 'should put his choice into his order' do
    expect(my_order).to receive(:add)
    customer.add_item(dish,qty)
  end

  it "should raise 'Wrong total!' error when wrong price set" do
    allow(my_order).to receive(:total).and_return(10)
    expect(lambda {customer.place_order(11, restaurant)}).to raise_error("Wrong total!")
  end

  it "should place an order at the restaurant" do
    allow(my_order).to receive(:total).and_return(10)
    expect(restaurant).to receive(:send_order)
    customer.place_order(10, restaurant)
  end

end
