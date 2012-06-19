class Member::Preference < ActiveRecord::Base
  attr_accessible :description, :member_id
  belongs_to :member

  def to_s
    description
  end
end
