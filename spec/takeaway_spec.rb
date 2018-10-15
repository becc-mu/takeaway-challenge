require 'takeaway'

describe TakeAway do
  subject(:takeaway) { described_class.new(menu: menu, order: order) }

  let(:menu) { double(:menu, print: printed_menu) }
  let(:order) { instance_double("Order", total: 9.80) }
  let(:printed_menu) { "soup: £2.50" }

  let(:dishes) { { fish: 3, chips: 2 } }

  before do
  allow(order).to receive(:add)
  end

  it 'shows list of dishes with prices' do
    expect(takeaway.print_menu).to eq(printed_menu)
  end

  it 'can order some number of several available dishes' do
    expect(order).to receive(:add).twice
    takeaway.place_order(dishes)
  end

  it 'knows total sum of dishes ordered' do
    #allow(order).to receive(:add)
    total = takeaway.place_order(dishes)
    expect(total).to eq(9.80)
  end
end
