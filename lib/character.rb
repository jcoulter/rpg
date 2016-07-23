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
    @health -= hp
    if @health == 0
      @alive = false
    end
  end

end