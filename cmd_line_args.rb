command_line_args = ARGV
puts command_line_args
puts command_line_args.length
puts command_line_args.to_s

first_arg, *other_arg = ARGV
puts first_arg.to_s
puts other_arg.to_s

puts "Hello, what is your name?"
#next line clears out all imput before prompting...
STDOUT.flush
#cuts off the line creak at the end of the input
name = gets.chomp
#cuts off front and back
# name = gets.strip

puts "Welcome, #{name}! This is home!"