class Member::Lang < ActiveRecord::Base
  attr_accessible :language_id, :level, :member_id

  belongs_to :member
  belongs_to :language, :class_name => "Dict::Language"
end
