class Movie < ActiveRecord::Base
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods
  has_many :genres, through: :genres
  has_many :movie_genres
  belongs_to :user
end
