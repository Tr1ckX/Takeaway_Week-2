require './lib/order'

describe Order do

  let(:order)    { Order.new    }
  let(:dish)     { double :dish }
  # let(:qty)      { double :qty  }
  let(:menu)     { double :menu, :dishes => [:dish]}

  it 'should be empty when initialzed' do
    expect(order.list).to eq([])
  end

  it 'should not be ready when initialized' do
    expect(order.ready?).to eq(false)
  end

  it 'should add the dish to the list' do
    order.add(dish, 1)
    expect(order.list).to include(dish)
  end

  it 'should increase the total price with price * qty' do
    egg = double(:dish, :price => 2)
    bacon = double(:dish, :price => 3)
    order.add(egg, 1)
    order.add(bacon, 2)
    expect(order.total_price).to eq(8)
  end


end
