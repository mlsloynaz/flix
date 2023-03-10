
class Movie < ApplicationRecord
    has_many :reviews , dependent: :destroy
    RATINGS = %w(G PG PG-13 R NC-17)    
    validates :title, :released_on, :duration, presence: true
    validates :description, length: {minimum:25, maximum:8000}
    validates :image_file_name, format: {
        with: /\w+\.(jpg|png)\z/i,
        message: "must be a JPG or PNG image"
      }
    validates :rating, inclusion: { in: RATINGS }

    def flop?
        total_gross.blank? ||  total_gross < 225_000_000
    end 
end
