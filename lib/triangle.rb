class Triangle
  # write code here

  attr_accessor :length, :width, :height, :type

  def initialize(length, width, height)
    @length = length
    @width = width
    @height = height

    if length <= 0 || width <= 0 || height <= 0
      raise TriangleError
    end

    if length + width <= height || width + height <= length || length + height <= width
      raise TriangleError
    end
  end

  def kind
    if length == width && width == height
      @type = :equilateral
    elsif length == width || width == height || length == height
      @type = :isosceles
    else
      @type = :scalene
    end
  end

  class TriangleError < StandardError
  end
end
