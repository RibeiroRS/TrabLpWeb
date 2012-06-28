class Vehicle < ActiveRecord::Base
  attr_accessible :description, :maxVolume, :maxWeight, :species
  has_many :delivery
end
