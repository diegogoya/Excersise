
class Car

	def initialize (noise, engine)
		@noise = noise
		@engine = engine
	end

	def make_noise
		puts "#{@noise}#{@engine.make_noise}"
	end

end

class Engine

	def initialize (noise)
		@noise = noise

	end
	
	def make_noise
		@noise
		
	end

end

engine1 = Engine.new "Clic"
engine2 = Engine.new "BRRRRR"
engine3 = Engine.new "::::::::"

Car.new("Brrr", engine1).make_noise



class Car
  attr_reader :wheels

  def initialize(noise, wheels)
    @noise = noise
    @wheels = wheels
  end

  def make_noise
  	puts 
  end

end

class WheelsCounter
	def initialize vehicles
		@vehicles = vehicles
	end

	def count_wheels
		@vehicles.reduce (0) {|sum, vehicle| sum + vehicle.number_of_wheels}
	end

end


#rc = RacingCar.new "Brrrrr", 4
c = Car.new "Brrr....", 4
#b = Bike.new "......", 2


WheelsCounter.new [rc, c, b]
  











