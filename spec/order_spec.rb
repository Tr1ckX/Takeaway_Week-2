require './lib/order'

describe Order do

  let(:order)    { Order.new    }
  let(:dish)     { double :dish }
  let(:qty)      { double :qty  }

  it 'should be empty when initialzed' do
    expect(order.list).to eq([])
  end

  it 'should not be ready when initialized' do
    expect(order.ready?).to eq(false)
  end

  it 'should add the dish to the list' do
    allow(qty).to receive(:times).and_return(1)
    allow(dish).to receive(:price).and_return(1)
    order.add(dish, 1)
    expect(order.list).to eq([dish])
  end

  it 'should increase the total price with price * qty' do
    allow(qty).to receive(:times).and_return(1)
    allow(dish).to receive(:price).and_return(2)
    order.add(dish, 3)
    expect(order.total_price).to eq(6)
  end


end
