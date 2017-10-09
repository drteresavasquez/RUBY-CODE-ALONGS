# #ORDER OF OPERATIONS
# 1. <=, >=, <, >
# 2. ==, !=
# 3. &&
# 4. ||

student1 = "Teresa"

if student1 == "Teresa"
    puts student1
elsif student1 == "Olivia"
    puts "#{student1} is not Teresa"
else
    puts "I don't know who this is: #{student1}"
end

#Nil is always false and false is false, but everything else is true
nil_value = nil

if nil_value == nil
    puts "Nil is true"
else
    puts "Nil is false"
end

# UNLESS CONDITIONAL STATMENT - runs when the condition is false
unless student1 == "Teresa"
    puts "This ain't Teresa"
else
    puts "It's #{student1}"
end

# CASE STATEMENT
#EXAMPLE 1
case student1
when "Teresa" then puts "Hi, #{student1}"
when "Olivia" then puts "Hi, Olivia"
when "Remle" then puts "Hi, Remle!"
else
    puts "I don't know you!"
end
#EXAMPLE 2
case student1
when "Teresa" 
    puts "Hi, #{student1}"
when "Olivia"
    puts "Hi, Olivia"
when "Remle"
    puts "Hi, Remle!"
else
    puts "I don't know you!"
end

age = 55
output = case age
when age > 10
    "Older than 10"
when age > 20
    "Older than 20"
when age > 30
    "Older than 30"
when age > 40
    "Older than 40"
else
    "You are super old!"
end
puts output

if age > 10
    puts "Older than 10"
elsif age > 20
    puts "Older than 20"
elsif age > 30
    puts "Older than 30"
elsif age > 40
    puts "Older than 40" 
else
    puts "Too old for scolding, yo!"
end