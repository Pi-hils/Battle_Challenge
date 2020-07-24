 require 'player'
require'game'

describe Player do
    subject(:lulu) { Player.new('Lulu') }
    subject(:zogo) { Player.new('Zogo') }

    describe '#name' do
      it "gives name of player" do
        expect(lulu.name).to eq 'Lulu'
      end
    end

    describe '#hit_points' do
      it "gives the total of the hit points" do
        expect(lulu.hit_points).to eq described_class::DEFAULT_HIT_POINTS
      end
    end

    describe 'damage caused' do
      it "reduces the player hit points by 10" do
        expect { zogo.receive_damage }.to change { zogo.hit_points }.by(-10)
    end
  end
end
