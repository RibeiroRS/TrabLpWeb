class Delivery < ActiveRecord::Base
  attr_accessible :addressFrom, :addressTo, :description, :paid, :totalCost, :volume, :weightbelo
  
  has_one :vehicle
  
  has_one :address, :class_name => "From", :foreign_key => "addressFrom"
  has_one :address, :class_name => "To", :foreign_key => "addressTo"
  
end
