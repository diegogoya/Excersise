class User
  @@count = 0
  def self.count
    puts @@count
  end
  def initialize
   @@count += 1
   
  end
  def user_name
  		puts "Type your name"
  		user_name = gets.chomp
  		user_name
  end

  def password
  		puts "Type your password"
  		password = gets.chomp
  		password
  end

  def type_text
  		puts "Type some text"
  		type_text = gets.chomp
  		type_text
  end

  def validation_password? password
  		@password = 123456
  end

  def validation_user? user_name
  		@user_name = Diego
  end

  def count_text
  		type_text.scan(" ").size
  end

end

class Menu

	def options
		puts "Chose one option:\ 0.Count Words\ 1.Count Letters\ 2.Reverse Text\ 3.Covert the text uppercase\ 4.Covert the text to lowercase"
		option = gets.chomp
	end
end
User.count
a = User.new
b = User.new
User.count


