require 'order'

describe Order do
  subject(:order) { described_class.new(menu) }

  let(:menu) { double(:menu) }
  let(:dishes) do
    {
      fish: 2,
      soup: 1
    }
  end
  it 'select several available dishes' do
    order.add(:fish, 2)
    order.add(:soup, 1)
    expect(order.dishes).to eq(dishes)
  end
end
