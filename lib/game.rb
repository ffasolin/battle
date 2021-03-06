class Game
  attr_reader :players, :turns

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turns = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.receive_damage
    switch_turns
  end

  def switch_turns
    @turns.reverse!
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end
end
