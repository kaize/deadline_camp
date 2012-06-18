class Member::Skill < ActiveRecord::Base
  LEVELS = I18n.t('skill.levels')

  attr_accessible :dict_id, :dict_type, :duration, :level, :member_id, :type, :description

  belongs_to :member
  belongs_to :dict, :polymorphic => true
end
