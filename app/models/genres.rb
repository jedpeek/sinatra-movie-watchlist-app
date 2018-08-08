class Genre < ActiveRecord::Base
  has_many :movies, through: :movie_genres
  has_many :users, through: :movies
  has_many :movie_genres
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods

end
