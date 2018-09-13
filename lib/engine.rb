class Engine
  attr_reader :engine_on
  def initialize
    @engine_on = false
  end

  def switch_on
    @engine_on = !engine_on
  end

  def switch_off
    @engine_on = !engine_on
  end
end
