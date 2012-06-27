class User < ActiveRecord::Base
  belongs_to :address
  attr_accessible :cpf, :login, :name, :password, :rg, :address_id
  
  def authenticate password
    if self && self.password == password
      self
    else
      nil
    end
  end
end
