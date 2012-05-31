class Member::Job < ActiveRecord::Base
  attr_accessible :member_id, :company, :started_at, :finished_at, :job, :responsibility, :achievements
  belongs_to :member
end
