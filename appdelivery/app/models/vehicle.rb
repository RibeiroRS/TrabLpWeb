class Vehicle < ActiveRecord::Base
  attr_accessible :description, :maxVolume, :maxWeight, :type
  
  belongs_to :delivery
end
