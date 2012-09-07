class Member::SkillIde < ActiveRecord::Base
  attr_accessible :ide_id, :duration, :level, :member_id, :type, :description

  belongs_to :ide
  belongs_to :member

  def name
    ide.name
  end
end
