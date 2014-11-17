require './lib/customer'

describe Customer do

  let(:customer) { Customer.new     }
  let(:my_order) { double :my_order }
  let(:dish)     { double :dish     }
  let(:qty)      { double :qty      }
  let(:menu)     { double :menu     }
  before do
    allow(Order).to receive(:new).and_return(my_order)
  end

  it 'should have an order list when he creates one' do
    customer.new_order
    expect(customer.my_order).to eq(my_order)
  end

  it 'should put his choice into his order' do
    customer.new_order
    allow(menu).to receive(:menu.include?).and_return(true)
    expect(my_order).to receive(:add)
    customer.order(dish, qty, menu)
  end

end
