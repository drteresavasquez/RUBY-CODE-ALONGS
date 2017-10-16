# Two types of code: method and procs (proc is a class)
# Procs can be split into 3 types: blocks, lambda, procs

############# BLOCKS ###################
[1,2,3,4,5,6].each {|number| puts number}

def call_block
    #when call yeild, it will run everything between curly braces.
    yield 1
    yield 2
end

call_block {|iterator| puts "Here is my block. Iterator: #{iterator}"}

#passing in block as a paramenter
def call_explicit_block(&block)
    # block.call another wat of saying yield
    return "There's no block" unless block_given?
    yield
    # block.call
end

call_explicit_block{ puts "This is an explicit block"}

check_for_block = call_explicit_block
puts check_for_block

#######################

# LAMBDA - have to pass arguments
say_hello = -> (name) {puts "Hello #{name}"}
say_hello.call("Teresa")

#PROC - expecting arguments, but don't need them passed to run. You can pass then though
my_proc = Proc.new{|arg1, arg2, arg3| puts "This is a proc:#{arg1}"}
my_proc.call
my_proc.call("Hello")

#LAMBDA - when see a return statement, they return go to next line of code
#PROC - will return to where it was called after a return

# LAMBDA
return_lambda = -> { return "something"}
puts "#{return_lambda.call}" #returns something

#PROC
def return_proc
    puts "Before"
    return_proc = Proc.new{return "Something else"}
    return_proc.call
    puts "After"
end 

p return_proc # returns Before "Something else"

#LAMBDA
def another_lambda
    l = lambda {return 1}
    l.call
    puts "After Lambda"
end

another_lambda # returns After Lambda

def another_proc
    p = Proc.new {return 2}
    p.call
    puts "After proc"
end

puts another_proc #returns nothing 

def call_the_proc(new_proc)
    count = 1
    new_proc.call
    # return 1
end

count = 2017
new_proc = Proc.new { puts count}
puts call_the_proc(new_proc)

