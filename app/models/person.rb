class Person < ActiveRecord::Base
#Model for people within the system, just holds name variable, all others found in relationships
  has_many :relationships
  has_many :buisnesses, through: :relationships
end
