class Member::SkillProgramLang < ActiveRecord::Base
  attr_accessible :program_lang_id, :duration, :level, :member_id, :type, :description

  belongs_to :program_lang
  belongs_to :member

  def name
    program_lang.name
  end
end
