class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c 
  end 

  def kind
    triangle = [a,b,c].sort
    if triangle.include?(0)
      raise TriangleError
    elsif triangle[2] >= triangle[0] + triangle[1]
      raise TriangleError
    else
      case triangle.uniq.size
      when 1 then :equilateral
      when 2 then :isosceles
      else        :scalene
      end
    end
  end 
  class TriangleError < StandardError
    def message 
      'triangle is invalid'
    end
  end 
end
