class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password

  has_secure_password

  validates :email, :presence => true, :uniqueness => true, :email => true
end
