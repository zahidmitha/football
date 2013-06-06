require 'shoot'
require 'tackle'
require 'player'

class Team

  def initialize(nationality)
    @players = []
    @team_nationality = nationality
  end

  def add(player)
     if @players.count <= 4
      @players << player
     else
      puts "The team is full"
    end
  end

  def view_team
    @players
  end

  def check_fifa_rules(foreign_number)
    @truths = []
    @players.each do |player|
      result = (player.nationality == @team_nationality)
      @truths << result if result == false
    end
    if @truths.count >= foreign_number
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

