require 'player'

describe Player do
  subject { Player.new("Mabon") }

  it 'should have a name' do
    expect(subject.name).to eq("Mabon")
  end
end