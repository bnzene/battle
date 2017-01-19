describe Player do
  subject(:v){Player.new('Varvara')}
  subject(:e){Player.new('Eleanor')}

  describe '#name' do
    it "returns a name" do
      expect(e.name).to eq ('Eleanor')
    end
  end

  describe '#hp' do
    it 'returns hp' do
      expect(e.hp).to eq described_class::DEFAULT_HP
    end
  end

  describe '#receive_attack' do
    it 'reduces victim\'s HP' do
      expect {e.receive_damage}.to change {e.hp}.by -10
    end
  end
end
