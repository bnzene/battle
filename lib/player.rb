class Player

  DEFAULT_HP = 20
  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = DEFAULT_HP
  end

  def receive_damage
    @hp -= 10
  end

end
