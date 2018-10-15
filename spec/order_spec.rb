require 'order'
require 'menu'

describe Order do
  subject(:order) { described_class.new(menu) }

  let(:menu) { instance_double(Menu) }
  let(:dishes) do
    {
      fish: 1,
      soup: 1
    }
  end

  before do
    allow(menu).to receive(:has_dish?).with(:fish).and_return(true)
    allow(menu).to receive(:has_dish?).with(:soup).and_return(true)

    allow(menu).to receive(:price).with(:fish).and_return(6.50)
    allow(menu).to receive(:price).with(:soup).and_return(3.45)
  end
  it 'select several available dishes' do
    order.add(:fish, 1)
    order.add(:soup, 1)
    expect(order.dishes).to eq(dishes)
  end

  it 'verify that my order is correct' do
    allow(menu).to receive(:has_dish?).with(:curry).and_return(false)
    expect { order.add(:curry, 1) }.to raise_error "Curry is not available."
  end

  it 'calculates the total order' do
    order.add(:fish, 2)
    order.add(:soup, 1)
    total = 16.45
    expect(order.total).to eq(total)
  end
end
