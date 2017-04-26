class Game



  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack(victim)
    victim.hp -= 10
  end

end
