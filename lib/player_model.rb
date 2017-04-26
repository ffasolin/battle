class Player

  attr_reader :name, :hp
  STARTING_HP = 60

  def initialize(name)
    @name = name
    @hp = STARTING_HP
  end

  def get_hit
    @hp -= 10
  end
  
end
