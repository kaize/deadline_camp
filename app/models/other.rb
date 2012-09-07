class Other < ActiveRecord::Base
  attr_accessible :name
  has_many :member_skill_others, class_name: 'Member::SkillOther'

  def to_s
    name
  end
end
