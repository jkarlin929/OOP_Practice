require_relative '../src/triangle'

# equilateral triangle (all sides same length)
class ETriangle < Triangle
  # just define `initialize` and everything else should work ;)
  # it should only take one argument
  # and call super with the correct number of arguments
  # how many arguments does the super class take?

  def initialize(size)
    super(size, size, size)
  end
end
