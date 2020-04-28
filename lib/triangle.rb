class Triangle
  attr_reader :a, :b, :c

  #

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    passing_triangle?
    if a == b && b == c
      :equilateral
    elsif a == c || a == b || b == c
      :isosceles
    else
      :scalene
    end
  end

  def passing_triangle?
    passing_triangle = [(a + b > c), (a + c > b), (b + c > a)]
    raise TriangleError if passing_triangle.include?(false)
  end


  class TriangleError < StandardError

  end


end