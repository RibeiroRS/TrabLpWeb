class Address < ActiveRecord::Base
  attr_accessible :city, :complement, :district, :number, :street
  
  has_one :delivery
  has_one :user
end
