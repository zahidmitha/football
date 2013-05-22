require 'shoot'
require 'tackle'

class Player

  attr_reader :name, :nationality

  def initialize(name, nationality)
    @name = name
    @nationality = nationality
  end

  def pass

    "I pass to Torres. I don't know who Torres is."
  end


  def foreign?(team_nationality)
    if team_nationality != @nationality
      true
    end
  end


end
