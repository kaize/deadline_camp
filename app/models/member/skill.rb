class Member::Skill < ActiveRecord::Base

  attr_accessible :dict_id, :dict_type, :duration, :level, :member_id, :type, :description

  belongs_to :member
  #FIXME: dict_types not save
  belongs_to :dict, :polymorphic => true
end
