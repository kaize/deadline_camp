class Dict::Language < ActiveRecord::Base
  attr_accessible :name

  has_many :member_langs
end
