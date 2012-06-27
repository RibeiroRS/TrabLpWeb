class Vehicle < ActiveRecord::Base
  attr_accessible :description, :maxVolume, :maxWeight, :type  
  has_one :delivery
end
