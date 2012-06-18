class MemberEditPasswordType < Member
  include BaseType

  attr_accessor :password_confirmation

  attr_accessible :password, :password_confirmation

  validates :password, :presence => true, :confirmation => true
  validates :password_confirmation, :presence => true
end
