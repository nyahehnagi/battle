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
end