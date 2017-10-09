# GLOBAL VARIABLES - start with $ and can be called from anywhere
$warning = "Global variables are not recommended!!!"

class Film
    
    # CLASS VARIABLE
    @@total_number_of_films = 0

    #CLASS CONSTANT
    COUNTRY = "USA"

    # CREATES THE GETTER AND SETTER METHODS AUTO
    # # Only GETS
    # attr_reader :film_name

    # #Only SETS
    # attr_writer :film_genre

    #GETS and SETS
    attr_accessor :film_name, :film_genre, :film_year_released

    def initialize(name, genre, year_released)
        # INSTANCE VAIRABLE available to entire object
        @film_name = name
        @film_genre = genre
        @film_year_released = year_released
        # Adding this here will allow the counter to run on initialize
        add_to_total_films
    end

    # #GETTER - Gets variable
    # def film_name
    #     @film_name
    # end

    # #SETTER - Sets a varaible
    # def film_name=(name)
    #     @film_name = name
    # end

    # INSTANCE METHOD
    def say_hello
        # LOCAL VARIABLE - only avaialble to this
        _hello_string = "Hello"
        # INSTEAD OF CALLING THE INSTANCE VARIABLE, WE CAN CALL THE GETTER SINCE WE HAVE GETTERS AND SETTERS (IE film_name below)
        puts "#{_hello_string} #{film_name}"
    end

    # CLASS METHOD IS SHARED ACROSS ALL METHODS IN CLASS. WHEN AN INSTANCE IS CREATED, IT ACCESSES, BUT DOESN'T OWN THE CLASS METHOD.
    def self.current_total_number_of_films
        puts "Current total number of films: #{@@total_number_of_films}"
    end

    def add_to_total_films
        @@total_number_of_films += 1
        # self.class.current_total_number_of_films
    end

    def output_film_properties
        puts "Name: #{film_name}, Genre: #{film_genre}, Year Released: #{film_year_released}"
    end

    def to_s
        "Film Class with properties: film_name, film_genre, film_year_released"
    end

    private :say_hello

    # ALL METHODS DEFAULT TO PUBLIC
    # public :add_to_total_films, :output_film_properties
     

end
