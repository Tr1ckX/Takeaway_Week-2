require './lib/menu'

describe Menu do

  let(:menu)    { Menu.new }
  let(:dish)    { :dish    }
  it 'should be empty when initialzed' do
    expect(menu.dishes).to eq([])
  end

  it ' should be able to add dish to the menu' do
    menu.add_dish(dish)
    expect(menu.dishes).to eq([dish])
  end

  it ' should be able to delete dish from the menu' do
    menu.add_dish(dish)
    menu.delete_dish(dish)
    expect(menu.dishes).to eq([])
  end


end
