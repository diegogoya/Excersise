puts "What is the source file?"
source_file = gets.chomp
print "What is the destination file?"
source_destination_file= gets.chomp
source_file_contents = IO.read(source_file)
IO.write("#{source_destination_file}","#{source_file_contents}")  
  
