require './lib/order'

describe Order do

  let(:order)    { Order.new    }
  let(:dish)     { double :dish }
  let(:qty)      { double :qty  }
  let(:menu)     { double :menu }

  it 'should be empty when initialzed' do
    expect(order.list).to eq([])
  end

  it 'should add the dish to the list' do
    allow_message_expectations_on_nil
    allow(qty).to receive(:times).and_return(1)
    allow(dish).to receive(:price).and_return(1)
    allow(menu).to receive(:dishes)
    allow(menu.dishes).to receive(:include?).and_return(true)
    order.add(dish, 1, menu)
    expect(order.list).to eq([dish])
  end

  it 'should increase the total price with price * qty' do
    allow_message_expectations_on_nil
    allow(qty).to receive(:times).and_return(1)
    allow(dish).to receive(:price).and_return(2)
    allow(menu).to receive(:dishes)
    allow(menu.dishes).to receive(:include?).and_return(true)
    order.add(dish, 3, menu)
    expect(order.total_price).to eq(6)
  end


end
