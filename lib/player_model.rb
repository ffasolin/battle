class Player
  attr_reader :name
  attr_accessor :hp

  STARTING_HP = 60

  def initialize(name)
    @name = name
    @hp = STARTING_HP
  end

  def receive_damage
    @hp -= 10
  end

  def dead?
    @hp == 0
  end
end
