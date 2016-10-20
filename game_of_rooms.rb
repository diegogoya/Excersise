puts "You are gonna play Game of Rooms"
puts "You are gonna have to choose in each room one of these four options: N,S,W,E"
puts "Good luck"
puts ""

class Room

  attr_reader(:description, :right_door)

  def initialize(description, right_door)
  		@description = description
  	
  end

  def door
		puts "#{@situation}#{@description}"

  end	

end

door_castle = Room.new("You are in front of the castle,There is a door in front of you")
hall = Room.new("You are at the hall of the castle ,There are several options to go")
garden = Room.new("Your are at the garden of the castl ,There is a trap door in the floor")
passageway = Room.new("Your are in a dark passageway ,There is a slippery staircase")
tomb = Room.new("Your are in a dark room with a tomb next to you, There is a light at your left")
river = Room.new("There is a underground river,You should jump")

class Player

	attr_reader(:num_lifes)

	def initialize (num_lifes)
		@num_lifes = num_lifes
	end

end

player_1 = Player.new(5)

rooms = [[door_castle, nil, nil],
		[hall, garden, nil],
		[passageway, tomb, river]]


class Game
	def initialize rooms, player
		@rooms = rooms 
		@current_room_x = 0
		@current_room_y = 0
		@player = player

	end

	def start
		while @player.num_lifes > 0
			  show_room
		      user_answer = ask_user
			  evaluate_answer(user_answer)
		end
		puts 'Game Over'
	end

	def show_room
		puts @rooms[@current_room_x][@current_room_y].description
	end

	def ask_user
		puts ">"
		answer = gets.chomp
		if valid_direction? answer
			answer
		else
			puts "Try again"
			ask_user
		end
	end

	def valid_direction? answer
		answer == "W" || answer == "S" || answer == "E" || answer == "N"
	end

	def evaluate_answer(answer)
		next_room_y = @current_room_y
		next_room_x = @current_room_x
		if answer == "W"
			next_room_y = @current_room_y - 1
		end

		if answer == "S"
			next_room_x = @current_room_x + 1
		end

		if answer == "E"
			next_room_y = @current_room_y + 1
		end

		if answer == "N"
			next_room_x = @current_room_x - 1
		end


		if @rooms[next_room_x][next_room_y] != nil
			@current_room_x = next_room_x
			@current_room_y = next_room_y
		else
			@player.num_lifes -= 1	
			puts "You have lost a life, Try again"
			ask_user
		end
	end
end

game = Game.new rooms, player_1
game.start

=begin
	
rescue Exception => e
	
end
door_castle.door
puts ">"
answer = gets.chomp
if 
	while answer == "W" || answer == "S" || answer == "E"
	puts "Try again"
	answer = gets.chomp
	end

else
	answer == door_castle.right_door
	puts hall.door

end

puts ">"
answer = gets.chomp
if 
	while answer == "W" || answer == "S" || answer == "N"
	puts "Try again"
	answer = gets.chomp
	end

else
	answer == hall.right_door
	puts garden.door

end


puts ">"
answer = gets.chomp
if 
	while answer == "W" || answer == "N" || answer == "E"
	puts "Try again"
	answer = gets.chomp
	end

else
	answer == garden.right_door
	puts passageway.door

end


puts ">"
answer = gets.chomp
if 
	while answer == "W" || answer == "N" || answer == "E"
	puts "Try again"
	answer = gets.chomp
	end

else
	answer == passageway.right_door
	puts tomb.door

end


puts ">"
answer = gets.chomp
if 
	while answer == "W" || answer == "S" || answer == "N"
	puts "Try again"
	answer = gets.chomp
	end

else
	answer == tomb.right_door
	puts river.door

end


puts ">"
answer = gets.chomp
if 
	while answer == "W" || answer == "S" || answer == "N"
	puts "Try again"
	answer = gets.chomp
	end

else
	answer == river.right_door
	puts "You are free. Well Done!!!!"

end

=end
