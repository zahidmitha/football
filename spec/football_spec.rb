require './lib/player'
require './lib/defender'
require './lib/midfielder'
require './lib/attacker'
require './lib/tackle'
require './lib/shoot'
require './lib/team'
require './lib/team_factory'
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

  describe "Team" do

  it 'has a limited number of foreign players' do
    team = Team.new("French")
    p1 = Attacker.new("Tom", "French")
    p2 = Attacker.new("Tom", "Italian")
    p3 = Defender.new("Tom", "Italian")
    p4 = Attacker.new("Tom", "Italian")
    team.add(p1)
    team.add(p2)
    team.add(p3)
    team.add(p4)
    team.check_fifa_rules_compliance.should eq true
  end

  it 'can only have four players in a team' do
   team = Team.new("French")
    p1 = Attacker.new("Tom", "French")
    p2 = Attacker.new("Tom", "French")
    p3 = Defender.new("Tom", "French")
    p4 = Attacker.new("Tom", "Italian")
    p5 = Attacker.new("Aouled", "Djibouti")
    p6 = Attacker.new("Tom", "French")
    team.add(p1)
    team.add(p2)
    team.add(p3)
    team.add(p4)
    team.add(p5)
    expect {team.add(p6)}.to raise_error "The team is full"
    # expect {team.add(p5).to_raise error}


  end


  it 'creates a model team with four players' do

    TeamFactory.get_team.should eq "The team consists of Danny Shittu, Milan Fukal, Nicky Butt and Britain Chique Arce"
    # TeamFactory.get_team.should eq nil

  end


end