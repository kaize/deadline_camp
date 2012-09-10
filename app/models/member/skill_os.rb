class Member::SkillOs < ActiveRecord::Base
  LEVELS = I18n.t('skills.os.levels')
  attr_accessible :os_id, :duration, :level, :member_id, :type, :description

  belongs_to :os
  belongs_to :member

  def name
    os.try(:name)
  end
end
