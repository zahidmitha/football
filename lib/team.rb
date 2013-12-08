require 'shoot'
require 'tackle'
require 'player'

class Team

  class << self
    attr_accessor :foreign_number
  end

    attr_reader :players

  def initialize(nationality)
    @players = []
    @team_nationality = nationality
  end

  def self.foreign_number
    @foreign_number = 4
  end

  def add(player)
     if @players.count < 5
      @players << player
     else
      raise "The team is full"
    end
  end

  def check_fifa_rules_compliance
    @truths = []
    @players.each do |player|
      result = (player.nationality == @team_nationality)
      @truths << result if result == false
    end
    if @truths.count >= Team.foreign_number
      # { |p| p.foreign?(@team_nationality) }
      raise "error"
    else
      true
    end
  end

end

# t = Team.new
# t.add(Player.new("Zahid", "UK"))
# print t.view_team

# (("Zahid", "UK"), ("Torres", "UK"), ("James", "Romania"), ("Zahid", "Mother Russia"))

# team = Team.new("French")
#     p1 = Attacker.new("Tom", "French")
#     p2 = Attacker.new("Tom", "French")
#     p3 = Defender.new("Tom", "French")
#     p4 = Attacker.new("Tom", "Italian")
#     p5 = Attacker.new("Aouled", "Djibouti")