class Member::Lang < ActiveRecord::Base
  attr_accessible :language, :level, :member
  belongs_to :member
  belongs_to :language, :class_name => "Dict::Language"
end
