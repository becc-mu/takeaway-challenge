require 'takeaway'
# As a customer
# So that I can check if I want to order something
# I would like to see a list of dishes with prices
describe TakeAway do
  subject(:takeaway) { described_class.new(menu: menu) }

  let(:menu) { double(:menu, print: printed_menu) }
  let(:printed_menu) { "soup: £2.50" }

  it 'shows list of dishes with prices' do
    expect(takeaway.print_menu).to eq(printed_menu)
  end
end
