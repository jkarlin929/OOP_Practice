require_relative '../src/triangle'

# done for you

# right triangle (two legs meeting at right angle. one hypotenuses)
class RTriangle < Triangle
  attr_reader :hypotenuse, :legs

  def initialize(a, b)
    @hypotenuse = RTriangle.hypotenuse(a, b)
    @legs = [a, b]
    super(a, b, hypotenuse)
  end

  def self.hypotenuse(a, b)
    Math.sqrt(a ** 2 + b ** 2)
  end
end
