require './lib/dish'

describe Dish do

  let(:dish) { Dish.new :name, 3 }
  let(:name) { double :name      }

  it 'should have a price when initialized' do
    expect(dish.price).to eq(3)
  end

  it 'should have a name when initialized' do
    expect(dish.name).to eq(:name)
  end


end
