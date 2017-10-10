require_relative 'car'

class Student
    # Because I am including the Car module from the car.rb file, I can call it using the dot convention (teresa.description)
    include Car # Makes instance methods of the module 

    # extend Car #makes it a class method then call it like a class method(Student.description)

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def student_age(age)

        #####################################
        # This tells the code block to keep the app running if there is an error
        # puts "BEFORE begin-end block of code"
        begin
        #     puts "Hi, this is working!"

            #this changes the default output of the specified error
            raise ArgumentError, "Arugument is not an integer" unless age.is_a? Integer

            # raise StudentTypeError, "PUT SOMETHING HERE"

            # puts "Is still working?"
            puts "#{name} is #{age} years old"
        rescue ArgumentError => e
            puts "There has been an exception"
            # This is the message created in the ArgumentError ("Arugument is not an integer")
            puts "Exception message: #{e.message}"
            puts "Exception backtrace: #{e.backtrace.inspect}"
        rescue StudentTypeError => e
            puts "Error: #{e.message}"
        # else
        #     puts "Run this code if everything goes well."
        # ensure
        #     puts "This code always runs!!!"
        end
        # puts "AFTER begin-end block of code"
        ######################################


    end

end
