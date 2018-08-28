require_relative 'shape'

class Rectangle < Shape

  # define attr_readers for width and height

  def initialize(width, height)
    @width = width
    @height = height
    super([width, height, width, height])
  end

  # define area
end
