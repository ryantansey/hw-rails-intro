class Movie < ActiveRecord::Base
    def self.all_ratings
        ['G', 'PG', 'PG-13', 'R', 'NC-17']
    end
    def self.filter_ratings(ratings)
        if (ratings == nil || ratings == {})
            return Movie.all
        else
            return Movie.where(rating: ratings.keys)
        end
    end
end