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

  def game_over?
    @player_2.hp == 0 || @player_1.hp == 0
  end

  def loser
    [@player_1, @player_2].select { |player| player.hp == 0 } if game_over?
  end

end
