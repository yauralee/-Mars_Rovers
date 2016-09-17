class Rover
  @x
  @y
  @facing

  def initialize(originalPosition)
    @x = originalPosition[0]
    @y = originalPosition[1]
    @facing = originalPosition[2]
  end

  def getPosition
    position = []
    position << @x
    position << @y
    position << @facing
    position
  end

  def parse(input)
    case input
      when 'L'
        turnLeft
      when 'M'
        move
      when 'R'
        turnRight
    end
  end

  def turnLeft
    case @facing
      when 'N' || 'n'
        @facing = 'W'
      when 'W' || 'w'
        @facing = 'S'
      when 'S' || 's'
        @facing = 'E'
      when 'E' || 'e'
        @facing = 'N'
    end
  end

  def turnRight
    case @facing
      when 'N' || 'n'
        @facing = 'E'
      when 'E' || 'e'
        @facing = 'S'
      when 'S' || 's'
        @facing = 'W'
      when 'W' || 'w'
        @facing = 'N'
    end
  end

  def move
    case @facing
      when 'N' || 'n'
        @y += 1
      when 'E' || 'e'
        @x += 1
      when 'S' || 's'
        @y -= 1
      when 'W' || 'w'
        @x -= 1
    end
  end

  def outOfRange?(plateau)
    return @x > plateau.max_x || @y > plateau.max_y
  end
end
