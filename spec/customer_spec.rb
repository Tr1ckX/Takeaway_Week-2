require './lib/customer'

describe Customer do

  let(:customer) { Customer.new     }
  let(:my_order) { double :my_order }
  let(:dish)     { double :dish     }
  let(:qty)      { double :qty      }
  let(:menu)     { double :menu     }

  before do
    allow(Order).to receive(:new).and_return(my_order)
    customer.new_order
  end

  it 'should have an order list when he creates one' do
    expect(customer.my_order).to eq(my_order)
  end

  it 'should put his choice into his order' do
    allow(menu).to receive(:menu)
    allow(menu.menu).to receive(:include?).and_return(true)
    expect(my_order).to receive(:add)
    customer.order(dish, qty, menu)
  end

  it "should raise 'Price not matching!' error when wrong price set" do
    allow(my_order).to receive(:total_price).and_return(10)
    expect(lambda {customer.place_order(11)}).to raise_error("Price not matching!")
  end

  it 'should have a ready order' do
    allow(my_order).to receive(:total_price).and_return(10)
    expect(my_order).to receive(:ready!)
    customer.place_order(10)
  end

end
