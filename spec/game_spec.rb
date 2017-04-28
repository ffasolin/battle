require 'game'

describe Game do
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  describe '#attack' do
    it 'hits player 2' do
      game = described_class.new(player1, player2)
      allow(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  describe '#switch_turns' do
    it "calls player_2's turn" do
      game = described_class.new(player1, player2)
      allow(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end
end
