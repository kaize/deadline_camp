class Dict::Language < ActiveRecord::Base
  LEVELS = %w(1 2 3 4 5)
  attr_accessible :name

  has_many :member_langs
end
