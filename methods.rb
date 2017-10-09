def first_method(name, age)
    puts "Hello, #{name}. You are #{age} years young, baby!"
end

first_method("Teresa", 40)

def second_method
    puts "This is my second method"
    return "Hello"
end

puts second_method

def third_method(*my_args)
    puts "I have been passed #{my_args.length} arguments"
    for arg in my_args
        puts "Argument: #{arg}"
    end
end

third_method(1,2,3,4,5,6,7)
third_method
third_method("Teresa","Olivia","Remle","Trin","BB","Baby Daddy")

def fourth_method(number)
    number += 7
end

my_number = 33
puts fourth_method(my_number)
puts my_number

def add(a,b)
    a + b
end

def subtract(a,b)
    a - b
end

def multiply(a,b)
    a * b
end

puts add(1,2)
puts subtract(5,3)
puts multiply(5,3)
puts multiply(add(5,5),subtract(5,4))