class Shape

  # add attr_reader for side_lengths
  attr_reader :side_lengths

  # initialize with an array of side lengths
  def initialize(side_lengths)
    @side_lengths = side_lengths
  end

  # define perimeter
  def perimeter
    side_lengths.sum
    length = 0
    side_lengths.each do |side|
      length = length + side
    end

    length
  end
end
