class Os < ActiveRecord::Base
  attr_accessible :name
  has_many :member_skills, :as => :disc
end
