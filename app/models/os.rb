class Os < ActiveRecord::Base
  attr_accessible :name
  has_many :member_skill_operation_systems, class_name: 'Member::SkillOs'

  def to_s
    name
  end
end
