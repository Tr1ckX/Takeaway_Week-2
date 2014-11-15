require './lib/order'

describe Order do

  let(:order)    { Order.new }

  it 'should be empty when initialzed' do
    expect(order.list).to eq([])
  end

  it 'should add the dish to the list' do

  end

end
