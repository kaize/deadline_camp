class Language < ActiveRecord::Base
  LEVELS = I18n.t('language.levels')
  attr_accessible :name

  has_many :member_langs
end
