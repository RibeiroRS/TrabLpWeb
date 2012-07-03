class Delivery < ActiveRecord::Base
  attr_accessible :addressFrom, :addressTo, :description, :paid, :totalCost, :volume, :weight, :vehicle_id
  
  belongs_to :vehicle
  
  
  belongs_to :name, :class_name => "user", :foreign_key => "addressFrom"
  belongs_to :name, :class_name => "user", :foreign_key => "addressTo"
  
end
