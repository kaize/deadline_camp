class Member::Achievement < ActiveRecord::Base
  attr_accessible :description, :member
  belongs_to :member
end
