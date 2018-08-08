class Genre < ActiveRecord::Base
  has_many :movies
  extend Slugifiable::ClassMethods
  include Slugifiable::InstanceMethods

end
