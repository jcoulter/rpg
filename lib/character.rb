class Character
attr_reader :health, :level, :alive
alias_method :alive?, :alive

  def initialize
    @health = 1000
    @level = 1
    @alive = true
  end

end