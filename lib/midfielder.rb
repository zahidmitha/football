require '/shoot'
require '/tackle'
require '/football'

class Midfielder < Player

  include Shoot

  include Tackle

end