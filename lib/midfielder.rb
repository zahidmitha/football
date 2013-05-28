require 'shoot'
require 'tackle'
require 'player'

class Midfielder < Player

  include Shoot

  include Tackle

end