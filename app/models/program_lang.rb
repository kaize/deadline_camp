class ProgramLang < ActiveRecord::Base
  attr_accessible :name
  has_many :member_skill_program_langs, class_name: 'Member::SkillProgramLang'

  def to_s
    name
  end
end
