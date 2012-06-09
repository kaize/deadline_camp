class Member::Skill < ActiveRecord::Base
  LEVELS = %w(1 2 3 4 5 6 7 8 9 10)

  attr_accessible :dict_id, :dict_type, :duration, :level, :member_id, :type, :description

  belongs_to :member
  belongs_to :dict, :polymorphic => true
end
