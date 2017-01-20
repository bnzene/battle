describe Player do
  subject(:player_1){Player.new('Varvara')}
  subject(:player_2){Player.new('Eleanor')}

  describe '#name' do
    it "returns a name" do
      expect(player_2.name).to eq ('Eleanor')
    end
  end

  describe '#hp' do
    it 'returns hp' do
      expect(player_2.hp).to eq described_class::DEFAULT_HP
    end
  end

  describe '#receive_damage' do
    it 'reduces victim\'s HP' do
      expect {player_2.receive_damage}.to change {player_2.hp}.by -10
    end
  end
end
