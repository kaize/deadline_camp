class Member::SkillOther < ActiveRecord::Base
  attr_accessible :name, :duration, :level, :member_id, :type, :description

  belongs_to :member
end
