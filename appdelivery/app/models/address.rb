class Address < ActiveRecord::Base
  attr_accessible :city, :complement, :district, :number, :street
  
  belongs_to :delivery
  belongs_to :user
end
