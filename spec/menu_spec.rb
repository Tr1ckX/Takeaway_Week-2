require './lib/menu'

describe Menu do

  let(:menu)    { Menu.new }

  it 'should be empty when initialzed' do
    expect(menu.list).to eq([])
  end

end
