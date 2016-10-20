
# class Car 
# 	@@number_of_cars = 0

#   def initialize (noise)
#     @noise = noise
#     @@number_of_cars +=1
#   end

#   def make_noise
#   	puts @noise 
#   end

#   def number_of_cars
#   	@@number_of_cars
#   end

# end

# normal_car = Car.new("Broommm")
# normal_car.make_noise
# noisy_car = Car.new("Brooooommmm")
# noisy_car.make_noise
# Car.number_of_cars
 
class Car
	attr_accessor :noise
	@@number_of_wheels = 4
	def initialize(noise)
		@noise = noise
	end	
	def number_of_wheels
		puts @@number_of_wheels
	end
	def make_noise
		puts @noise
	end
end


audi = Car.new('Broom')
audi.make_noise
audi.number_of_wheels  #4

puts audi.noise

# toyota = Car.new('BRRROOOOOM!')
# toyota.make_noise
# toyota.number_of_wheels #4

# toyota2 = Car.new('BEEEE')
toyota2.number_of_wheels #4

