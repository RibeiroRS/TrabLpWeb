class Address < ActiveRecord::Base
  attr_accessible :city, :complement, :district, :number, :street
end
