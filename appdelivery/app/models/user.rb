class User < ActiveRecord::Base
  belongs_to :address
  attr_accessible :cpf, :login, :name, :password, :rg
end
