# WHILE STATMENT - Like JS do...while
puts "WHILE STATMENT"
counter1 = 1
while counter1 < 5 do
    puts "loop1 number #{counter1}"
    counter1 += 1
end

puts "WHILE MODIFIER"
# WHILE MODIFIER - if put while at end, will run once and THEN check
counter2 = 5
begin 
    puts "loop2 number #{counter2}"
    counter2 -= 1
end while counter2 < 4

puts "UNTIL STATEMENT"
# UNTIL STATEMENT - executes while the condition is false
counter3 = 1
until counter3 > 5 do
    puts "Until Statement iteration #{counter3}"
    counter3 += 1
end

puts "UNTIL MODIFIER"
# UNTIL MODIFIER - runs once and then checks for false statment
counter4 = 5
begin 
    puts "Until modifier iteration #{counter4}"
    counter4 += 1
end until counter4 > 5

puts "FOR LOOP"
# For Loop 
for i in 1..3 do 
    puts "For loop interation #{i}"
end

puts ".EACH LOOPS"
#.each Loop
(1..10).each do |i|
    puts "Each loop iteration #{i}"
end

student = {:name => "Teresa", :animal => "Dog"}
student.each do |key, value|
    puts "#{key}: #{value}"
end

# FOR IN with If (..) includes all numbers in the range (...) doesn't include last number
for i in 1..10
    puts "For loop from 1 to 10 interation #{i}"
    if i > 8
        break
    end
end

puts "NEXT STATEMENT"
# IF NEXT STATEMENT - move on to the next thing and keep iterating
for i in 1..5
    if i < 2 then
        next
    end
    puts "For loop 1 to 5 iteration #{i}"
end

#REDO - this in an infinite loop...
# for i in 1..5
#     if i < 2 then
#         puts "For loop 0 to 7 iteration #{i}"
#         redo
#     end
# end

# A COUPLE WAYS TO DO THESE
5.times do |i|
    puts "Iteration #{i}"
end

#OR

5.times { |i| puts "Iteration #{i}"}

#################################

5.upto(10) do |i|
    puts "TacoUp Iteration #{i}"
end
#OR
5.upto(10){ |i| puts "TacoUp Iteration #{i}"}

#################################

5.downto(-5) do |i|
    puts "TacoDown Iteration #{i}"
end
#OR
5.downto(-5){ |i| puts "TacoDown Iteration #{i}"}
