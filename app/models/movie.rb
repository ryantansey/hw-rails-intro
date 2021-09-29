class Movie < ActiveRecord::Base
    def self.filter_ratings(ratings)
        if (ratings == nil)
            return Movie.all
        else
            return Movie.where(rating: ratings.keys)
        end
    end
end