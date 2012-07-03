class Other < ActiveRecord::Base
  attr_accessible :name
  has_many :member_skills, :as => :dict

  def to_s
    name
  end
end
