require_relative '../src/shape'

class Triangle < Shape

  def self.heron_formula(a, b, c)
    s = (a + b + c) / 2.0
    Math.sqrt(s * (s - a) * (s - b) * (s - c))
  end

  def initialize(a, b, c)
    # call super with the correct argument(s)
    super([a, b, c])
  end

  def area
    Triangle.heron_formula(*side_lengths)
  end
end
