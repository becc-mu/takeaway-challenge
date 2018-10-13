require 'menu'

describe Menu do

  subject(:menu) { described_class.new(dishes) }
  let(:dishes) do
    {
      soup: 3.45,
      fish: 6.90,
      chips: 2.90
    }
  end
  
  it 'has a list of dishes with prices' do
    expect(menu.dishes).to eq(dishes)
  end
end
