puts "You are gonna play Game of Rooms"
puts "You are gonna have to choose in each room one of these four options: N,S,W,E"
puts "Good luck"
puts ""

class Rooms

  attr_reader(:north, :south, :west, :east)

  def initialize(north, south, west, east)
  		@north = north
  		@south = south 
  		@west = west
  		@east = east
  end
 
end

door_castle = Rooms.new("true", "false", "false", "false")
hall = Rooms.new("true", "false", "false", "false")
garden = Rooms.new("true", "false", "false", "false")
passageway = Rooms.new("true", "false", "false", "false")
tomb = Rooms.new("true", "false", "false", "false")
river = Rooms.new("true", "false", "false", "false")

puts "You are in front of the castle. There is a door in front of you"
n
