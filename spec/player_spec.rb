require_relative '../lib/player'

describe Player do

  subject(:player) { described_class.new("Bob") }

  it "has a name" do
    expect(player.name).to eq "Bob"
  end

  it "can be initialised with no name param" do
    player = described_class.new
    expect(player.name).to be_empty
  end

  it "has default hitpoints of 100" do
    expect(player.hit_points).to eq 100
  end

  describe "#deduct_hit_points" do
    it "reduces hitpoints" do
      expect{ player.deduct_hit_points(10) }.to change { player.hit_points }.by(-10)
    end
  end

  describe "#attack" do
    it "attacks a player" do
      player_two = described_class.new("Fred")
      expect(player_two).to receive(:deduct_hit_points).with(10)
      player.attack(player_two)
    end
  end
  

end