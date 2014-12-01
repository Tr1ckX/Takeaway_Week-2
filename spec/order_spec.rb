require './lib/order'

describe Order do

  let(:order)    { Order.new    }
  let(:dish)     { double :dish, :price => 2 }
  let(:qty)      { double :qty  }
  let(:menu)     { double :menu }

  it 'should be empty when initialzed' do
    expect(order.items).to eq({})
  end

  it 'should add the dish to the list' do
    allow(dish).to receive(:name)
    order.add(dish, 1)
    expect(order.list).to eq({dish=>1})
  end

  it 'should return the total price' do
    order.add(dish, 2)
    expect(order.total).to eq(4)
    order.total
  end


end
