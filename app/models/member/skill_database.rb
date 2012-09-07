class Member::SkillDatabase < ActiveRecord::Base
  attr_accessible :database_id, :duration, :level, :member_id, :type, :description

  belongs_to :member
  belongs_to :database

  def name
    database.name
  end
end
