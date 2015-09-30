class Buisness < ActiveRecord::Base
#holds buisness name, location, products. see relationship for other variables
  require 'carrierwave'

  attr_accessor :image
  has_many :relationships
  has_many :people, through: :relationships
  mount_uploader :image, ImageUploader
end
