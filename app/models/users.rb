class User < ActiveRecord::Base
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods
  has_many :movies
  has_many :genres, through: :movies
  has_secure_password
end
