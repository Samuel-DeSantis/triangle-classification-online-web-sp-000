class Triangle

  attr_accessor :a, :b, :c

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if @x == @y && @y == @z
      :equilateral
    elsif @x == @y || @y == @z || @x == @z
      :isosceles
    else
      :scalene
    end
  end

  def validate_triangle
    real_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    [a, b, c].each do |side|
      real_triangle << false if side <= 0
      raise TriangleError if real_triangle.include?(false)
    end
  end

  class TriangleError < StandardError

  end

end
