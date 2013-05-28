require './lib/player'
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

  it 'has a limited number of foreign players' do
    team = Team.new("French")
    p1 = Attacker.new("Tom", "French")
    p2 = Attacker.new("Tom", "Italian")
    p3 = Attacker.new("Tom", "Italian")
    p4 = Attacker.new("Tom", "Italian")
    team.add(p1)
    team.add(p2)
    team.add(p3)
    team.add(p4)
    team.check_fifa_rules()

  end


end