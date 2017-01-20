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
      expect(game.current_attacker).to eq(player_2)
      expect(game.current_victim).to eq(player_1)
    end
  end

  describe '#game_over?' do
    it 'returns true if one player has lost' do
      allow(player_2).to receive(:hp).and_return(0)
      expect(game.game_over?).to eq true
    end
  end

  describe '#loser' do
    it 'returns name of the loser' do
      allow(player_1).to receive(:hp)
      allow(player_2).to receive(:hp).and_return(0)
      expect(game.loser).to eq(player_2)
    end
  end
end
