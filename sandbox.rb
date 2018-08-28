Dir["src/*.rb"].each { |f| require_relative f }

shape = Shape.new([2, 3, 3, 4, 5])
p shape.side_lengths # => [2, 3, 3, 4, 5]
p shape.perimeter # => 17

rect = Rectangle.new(5, 7)
p rect.width # => 5
p rect.height # => 7
p rect.side_lengths # => [5, 7, 5 ,7]
p rect.perimeter # => 24
p rect.area # => 35

square = Square.new(6)
p square.width # => 6
p square.height # => 6
p square.side_lengths # => [6, 6, 6, 6]
p square.perimeter # => 24
p square.area # => 36

tri = Triangle.new(3, 4, 5)
p tri.perimeter # => 12
p tri.area # => 6

e_tri = ETriangle.new(3)
p e_tri.perimeter # => 9
p e_tri.area # => 3.897...

r_tri = RTriangle.new(3, 4)
p r_tri.perimeter # => 12
p r_tri.area # => 6
p r_tri.legs # => [3, 4]
p r_tri.hypotenuse # => 5

puts "\nYOU DID IT!!"
