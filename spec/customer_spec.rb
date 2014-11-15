require './lib/customer'

describe Customer do

  let(:customer) { Customer.new               }
  let(:order)    { double :order }
  let(:dish)     { double :dish               }

  it 'should put his choice into his order' do
    expect(order).to receive(:add).with(dish)
    customer.order(order, dish)
  end

end
