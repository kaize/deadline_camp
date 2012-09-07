class Database < ActiveRecord::Base
  attr_accessible :name
  has_many :member_skill_databases, class_name: 'Member::SkillDatabase'

  def to_s
    name
  end
end
