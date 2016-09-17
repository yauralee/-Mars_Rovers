class Plateau
  attr_accessor :max_x, :max_y

  def initialize(maxPosition)
    @max_x = maxPosition[0]
    @max_y = maxPosition[1]
  end
end