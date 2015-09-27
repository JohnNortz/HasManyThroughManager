class Relationship < ActiveRecord::Base
#relations within the system, hold the ids of the person and buisness, related salary and position information
  belongs_to :buisness
  belongs_to :person
end
