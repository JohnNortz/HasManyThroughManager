class Buisness < ActiveRecord::Base
#holds buisness name, location, products. see relationship for other variables
  has_many :relationships
  has_many :people, through: :relationships
end
