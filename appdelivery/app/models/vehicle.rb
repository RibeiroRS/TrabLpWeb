class Vehicle < ActiveRecord::Base
  attr_accessible :description, :maxVolume, :maxWeight, :type
end
