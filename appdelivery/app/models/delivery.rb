class Delivery < ActiveRecord::Base
  attr_accessible :addressFrom, :addressTo, :description, :paid, :totalCost, :volume, :weightbelo, :vehicle_id
  
  belongs_to :vehicle
  
  belongs_to :address, :class_name => "From", :foreign_key => "addressFrom"
  belongs_to :address, :class_name => "To", :foreign_key => "addressTo"
  
end
