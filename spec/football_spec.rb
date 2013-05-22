require './lib/football'
require './lib/defender'
require './lib/midfielder'
require './lib/attacker'
require './lib/tackle'
require './lib/shoot'
require './lib/team'
require 'spec_helper'

describe "Player" do

  it 'has a name' do
    player = Player.new("Danny Shittu", "Nigerian")
    player.name.should eq "Danny Shittu"
  end

  it 'has a nationality' do
    player = Player.new("Danny Shittu", "Nigerian")
    player.nationality.should eq "Nigerian"
  end

  it 'can pass' do
    player = Player.new("Danny Shittu", "Nigerian")
    player.pass.should eq "I pass to Torres. I don't know who Torres is."
  end

end

describe "Attacker" do

  it 'can pass' do
    attacker = Attacker.new("Zahid", "Nigerian")
    attacker.pass

  end

  it 'can shoot' do
     attacker = Attacker.new("Zahid", "Nigerian")
     attacker.shoot
  end


end

des