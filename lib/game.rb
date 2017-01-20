class Game

attr_accessor :player_1, :player_2, :current_attacker, :current_victim

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_attacker = player_1
    @current_victim = player_2
  end

  def attack(player)
    @current_victim.receive_damage
  end

  def switch_players
    @current_attacker = (@current_attacker == @player_1 ? @player_2 : @player_1)
    @current_victim = (@current_victim == @player_1 ? @player_2 : @player_1)
  end

end
