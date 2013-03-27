class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :phone

  has_many :reservations
  has_secure_password

end
