require 'takeaway'
# As a customer
# So that I can check if I want to order something
# I would like to see a list of dishes with prices
describe TakeAway do
  subject(:takeaway) { described_class.new(menu: menu, order: order) }

  let(:menu) { double(:menu, print: printed_menu) }
  let(:order) { double(:order) }
  let(:printed_menu) { "soup: £2.50" }

  let(:dishes) { { fish: 3, chips: 2 } }

  it 'shows list of dishes with prices' do
    expect(takeaway.print_menu).to eq(printed_menu)
  end

  it 'can order some number of several available dishes' do
    expect(order).to receive(:add).twice
    takeaway.place_order(dishes)
  end
end
