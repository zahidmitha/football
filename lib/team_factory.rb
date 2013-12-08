require 'shoot'
require 'tackle'
require 'player'
require 'team'


class TeamFactory

    # def self.create_model_team
    #     @p1 = Defender.new("Danny Shittu", "Nigeria")
    #     @p2 = Defender.new("Milan Fukal", "Czech Republic")
    #     @p3 = Midfielder.new("Nicky Butt", "Britain")
    #     @p4 = Attacker.new("Britain Chique Arce", "Paraguay")
    #     team = Team.new("Britain")
    #     team.add(@p1)
    #     team.add(@p2)
    #     team.add(@p3)
    #     team.add(@p4)
    #     team.check_fifa_rules_compliance
    # end


    def self.create_model_team(name1, nat1, name2, nat2, name3, nat3, name4, nat4, team_nationality)
        @p1 = Defender.new(name1, nat1)
        @p2 = Defender.new(name2, nat2)
        @p3 = Midfielder.new(name3, nat3)
        @p4 = Attacker.new(name4, nat4)
        team = Team.new(team_nationality)
        team.add(@p1)
        team.add(@p2)
        team.add(@p3)
        team.add(@p4)
        team.check_fifa_rules_compliance
    end

    def self.get_team
        create_model_team("Danny Shittu", "Nigeria", "Milan Fukal", "Czech Republic", "Nicky Butt", "Britain", "Britain Chique Arce", "Paraguay", "Britain")

        "The team consists of #{@p1.name}, #{@p2.name}, #{@p3.name} and #{@p4.name}"
    end

end