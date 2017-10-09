# 2 options to load

# REQUIRE checks it it has been required for the app before
# require "./film"

# LOADS file very time - use if file changes dynamically during run time
# load "./film.rb"

# require_relative means to look in the same directory
require_relative "film"
require_relative "book"
require_relative "fantasy"

film1 = Film.new("HP Year 1", "Fantasy", "2001")
# film1.say_hello
Film.current_total_number_of_films
puts Film::COUNTRY
film1.film_name = "Rocky"
film1.film_genre = "Sports"
film1.film_year_released = 1977
puts "Film 1 name: #{film1.film_name}, genre: #{film1.film_genre}, year released: #{film1.film_year_released}"

film2 = Film.new("HP Year 2", "Fantasy", "2003")
# film2.say_hello
Film.current_total_number_of_films

book1 = Book.new
book1.give_me_global_var

# BECAUSE THIS IS INHERITED FROM FILMS, HAVE TO PASS THE SAME AMOUNT OF ARGUMENTS
fantasy1 = Fantasy.new("HP Year 2", "Fantasy", 2003)
fantasy1.epic_music
fantasy1.output_film_properties
puts "$$$$$$$$$$$$$$$$$$"
puts film1.to_s
puts fantasy1.to_s


