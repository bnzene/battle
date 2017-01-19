describe Game do
  subject(:game) { described_class.new }
    let(:v) { double :player }
    let(:e) { double :player }

  describe '#attack' do
    it 'damages player' do
      expect(e).to receive(:receive_damage)
      game.attack(e)
    end
  end
end
