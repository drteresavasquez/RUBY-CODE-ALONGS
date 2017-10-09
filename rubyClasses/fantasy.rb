class Fantasy < Film
    def epic_music
        puts "Flight of the Valkyrie"
        say_hello

    end

    def output_film_properties
        puts "This is a fantasy film with the name #{film_name}"
    end

    def to_s
        "Fantasy Class with properties: film_name, film_genre, film_year_released"
    end

end