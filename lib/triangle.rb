class Triangle

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if @x == 0 || @y == 0 || @z == 0
      raise TriangleError
    elsif @x < 0 || @y < 0 || @z < 0
      raise TriangleError
    elsif tri_inequality?(@x, @y, @z)
      raise TriangleError
    elsif @x == @y && @y == @z
      :equilateral
    elsif @x == @y || @y == @z || @x == @z
      :isosceles
    else
      :scalene
    end
  end

  def tri_inequality?(a, b, c)
    if a + b > c
      true
    elsif a + c > b
      true
    elsif b + c > a
      true
    else
      false
    end
    true
  end

  class TriangleError < StandardError

  end

end
