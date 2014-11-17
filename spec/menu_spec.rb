require './lib/menu'

describe Menu do

  let(:menu)    { Menu.new }
  let(:dish)    { :dish    }
  it 'should be empty when initialzed' do
    expect(menu.menu).to eq([])
  end

  it ' should be able to add dish to the menu' do
    menu.add_dish(dish)
    expect(menu.menu).to eq([dish])
  end

end
