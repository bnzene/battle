describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#new game' do
    it 'creates a game with two players' do
      expect(game.player_1).to eq player_1
      expect(game.player_2).to eq player_2
    end
  end

  describe '#attack' do
    it 'damages player' do
      expect(game).to respond_to(:attack).with(1).argument
    end
  end

  describe '#switch_players' do
    it 'switches player' do
      game.switch_players
      expect(game.player_1).to eq(player_2)
      expect(game.player_2).to eq(player_1)
    end
  end
end
