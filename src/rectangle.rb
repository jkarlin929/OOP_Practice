require_relative 'shape'

class Rectangle < Shape

  # define attr_readers for width and height
  attr_reader :width, :height, :waaaddaaapp

  def initialize(width, height)
    @width = width
    @height = height
    super([width, height, width, height])
  end

  # define area
  def area
    width * height
  end
end
