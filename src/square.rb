require_relative 'rectangle'

class Square < Rectangle
  # just define `initialize` and everything else should work ;)
  # it should only take one argument
  # and call super with the correct number of arguments
  # how many arguments does the super class take?

  def initialize(side)
    super(side, side)
  end
end
