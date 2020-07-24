# require 'game'

describe Game do
    subject(:game) { described_class.new(player_1, player_2) }
    let(:player_1) {double :player}
    let(:player_2) {double :player}

    describe "#attack" do
        it "player has been attacked and damaged" do
          expect(player_2).to receive(:receive_damage)
          game.attack(player_2)
  end
 end

      #it "accepts two Player intances" do
      #  expect(game).to respond_to
      # end
end
