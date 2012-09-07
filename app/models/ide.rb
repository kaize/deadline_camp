class Ide < ActiveRecord::Base
  attr_accessible :name
  has_many :member_skill_ides, class_name: 'Member::SkillIde'

  def to_s
    name
  end
end
