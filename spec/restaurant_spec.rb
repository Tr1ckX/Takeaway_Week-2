require './lib/restaurant'

describe Restaurant do

  let(:restaurant)   { Restaurant.new }
  let(:text)         { double :text   }
  let(:number)       { double :number }

  before do
    allow(TextMessage).to receive(:new).and_return(text)
  end

  it 'should send confirmation text' do
    expect(text).to receive(:send)
    restaurant.send_confirmation(number)
  end

end
