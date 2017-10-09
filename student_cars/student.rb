require_relative 'car'

class Student
    # Because I am including the Car module from the car.rb file, I can call it using the dot convention (teresa.description)
    include Car # Makes instance methods of the module 

    # extend Car #makes it a class method then call it like a class method(Student.description

    attr_accessor :name

    def initialize(name)
        @name = name
    end
end
