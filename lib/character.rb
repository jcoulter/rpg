class Character
  MAX_HEALTH = 1000

  attr_reader :health, :level, :alive
  alias_method :alive?, :alive

  def initialize
    @health = MAX_HEALTH
    @level = 1
    @alive = true
  end

  def damage(hp)
    @health = [@health - hp, 0].max
    if @health == 0
      @alive = false
    end
  end

  def heal(hp)
    if alive?
      @health = [@health + hp, MAX_HEALTH].min
    end
  end

  def deal_damage(monster, hp)
    monster.damage hp
  end

end