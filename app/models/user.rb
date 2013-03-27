class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation, :phone

  validates :first_name, :last_name, :presence => true
  validates :email, :presence => true, :uniqueness => true
  validates :phone, :presence => true, :uniqueness => true
  validates_presence_of :password, :on => :create

  has_many :reservations
  has_secure_password

end
