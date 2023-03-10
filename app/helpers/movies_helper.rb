module MoviesHelper
    def trunc_40(description)
        truncate(description,  length: 40, separator: ' ')
    end

    def total_gross(movie)
        if movie.flop?
            "Flop!"
        else    
            number_to_currency(movie.total_gross, precision:0)
        end
    end

    def year_of(movie)
        if movie.released_on
         movie.released_on.year
        end
    end
end
