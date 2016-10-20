require 'imdb'

class Movie

	def initialize name, rating
		@name = name
		@rating = rating
	end

        def rating_name
        	puts @name
        	puts @rating
        end


end

movies = IO.readlines("movies.txt") 
movies.each do |item| i = Imdb::Search.new(item)
title = i.movies[0].title
rating = i.movies[0].rating
movies = Movie.new(title, rating)
movies.rating_name
end

=begin
	
end

def file_contents
file_contents = IO.read("movies.txt")  
puts "The source file contains: #{file_contents}"
end
=end