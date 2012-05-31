class Member::Skill < ActiveRecord::Base
  LEVELS = %w(A B C D E)

  attr_accessible :dict, :duration, :level, :member, :type

  belongs_to :dict, :polymorphic => true
end
