class Vehicle < ActiveRecord::Base
  attr_accessible :description, :maxVolume, :maxWeight, :species
end
