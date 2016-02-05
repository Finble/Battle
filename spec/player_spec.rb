require 'player'
describe Player do
  subject(:wim) {described_class.new('wim')}

  it 'returns the name' do
    expect(wim.name).to eq 'wim'
  end
end
