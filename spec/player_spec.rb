require 'player_model'

describe Player do
  player = described_class.new('Filipe')

  it 'returns a name' do
    expect(player.name).to eq 'Filipe'
  end

  describe '#receive_damage' do
    it 'reduces hp by 10' do
      expect { player.receive_damage }.to change { player.hp }.by(-10)
    end
  end
end
