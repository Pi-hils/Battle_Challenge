require 'player'

describe Player do
    subject(:lulu) { Player.new('Lulu') }

    describe '#name' do
      it "returns name of player" do
        expect(subject.name).to eq 'Lulu'
      end
    end
end
