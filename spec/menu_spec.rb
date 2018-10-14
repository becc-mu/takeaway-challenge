require 'menu'

describe Menu do

  subject(:menu) { described_class.new(dishes) }
  let(:dishes) do
    {
      soup: 3.45,
      fish: 6.50,
      chips: 2.00
    }
  end

  it 'has a list of dishes with prices' do
    expect(menu.dishes).to eq(dishes)
  end

  it 'prints a list of dishes with prices' do
    printed_menu = "Soup £3.45, Fish £6.50, Chips £2.00"
    expect(menu.print).to eq(printed_menu)
  end

  it 'confirms if a dish is on the menu' do
    expect(menu.has_dish?(:fish)).to be true
  end

  it 'confirms if a dish is not on the menu' do
    expect(menu.has_dish?(:curry)).to be false
  end

  it 'calculates prices' do
    expect(menu.price(:fish)).to eq(dishes[:fish])
  end
end
