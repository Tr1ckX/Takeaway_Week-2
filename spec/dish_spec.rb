require './lib/dish'

describe Dish do

  let(:dish) { Dish.new('egg',3) }

  it 'should have a price when initialized' do
    expect(dish.price).to eq(3)
  end
end
