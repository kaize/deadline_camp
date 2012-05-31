class Member::AdditionalEducation < ActiveRecord::Base
  attr_accessible :description
  belongs_to :member
end
