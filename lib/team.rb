require 'shoot'
require 'tackle'
require 'football'

class Team

  def initialize(nationality)
    @players = []
    @team_nationality = nationality
  end

  def add(player)
     @players << player
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
    end
  end


end

t = Team.new
t.add(Player.new("Zahid", "UK"))
print t.view_team

# (("Zahid", "UK"), ("Torres", "UK"), ("James", "Romania"), ("Zahid", "Mother Russia"))

