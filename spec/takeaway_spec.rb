require 'take_away'
# As a customer
# So that I can check if I want to order something
# I would like to see a list of dishes with prices
describe TakeAway do
  let(:take_away) { double :take_away }
    subject { described_class.new(take_away) }

    it 'returns menu' do
      allow(take_away).to receive(:menu).and_return({"soup" => 5})
      expect(subject.dispaly_menu).to eq({"soup" => 5})
    end
  end
