class Member < ActiveRecord::Base
  STUDY_MONTH = I18n.t('date.month_names').compact
  HOW_HEAR_ABOUT_AS_LIST = I18n.t('members.how_hear_about_as_list')
  SCHOOLYEARS = %w(1 2 3 4 5 6)
  SKILL_LEVELS = I18n.t('skill.levels')
  attr_accessible :state, :email, :first_name, :last_name, :patronymic, :phone, :skype, :jabber, :icq, :institute,
    :start_year, :start_month, :finish_year, :finish_month, :department, :profession, :degree, :gpa, :web,
    :camp_time, :camp_life, :camp_fee, :camp_notebook, :camp_training, :hobby, :sport, :state_event, :password,
    :auth_token, :group, :how_hear_about_as, :twitter, :facebook, :vkontakte, :city, :birthday, :schoolyear_count

  include UsefullScopes

  has_secure_password
  has_many :jobs
  has_many :additional_educations
  has_many :achievements
  has_many :langs
  has_many :skill_databases
  has_many :skill_ides
  has_many :skill_operation_systems, :class_name => 'SkillOs'
  has_many :skill_others
  has_many :skill_program_langs
  has_many :others
  has_many :preferences

  validates :password, :presence => { :on => :create }
  validates :phone, :presence => true, :phone => true
  validates :email, :presence => true, :uniqueness => true, :email => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true
  validates :facebook, :slug => true, :allow_blank => true
  validates :twitter, :slug => true, :allow_blank => true
  validates :vkontakte, :slug => true, :allow_blank => true
  validates :city, :presence => true
  validates :birthday, :presence => true

  state_machine :state, :initial => :new do
    state :new
    state :accepted
    state :busted

    event :accept do
      transition :new => :accepted
    end

    event :bust do
      transition [:new, :accepted] => :busted
    end
  end

  scope :active, without_state(:busted)

  def generate_auth_token
    self.auth_token = SecureApp.generate_token
  end

end
