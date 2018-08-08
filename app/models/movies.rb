class Movie < ActiveRecord::Base
  has_many :genres, through: :genres
  has_many :movie_genres
  belongs_to :user
end
