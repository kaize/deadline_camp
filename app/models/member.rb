class Member < ActiveRecord::Base
  STUDY_MONTH = I18n.t('date.month_names').compact
  attr_accessible :state, :email, :first_name, :icq, :jabber, :last_name, :patronymic, :phone, :skype,
    :state, :email, :first_name, :last_name, :patronymic, :phone, :skype, :jabber, :icq, :institute,
    :start_year, :start_month, :finish_year, :finish_month, :department, :profession, :degree, :gpa, :web,
    :camp_time, :camp_life, :camp_fee, :camp_notebook, :camp_training, :hobby, :sport, :state_event, :password

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

  accepts_nested_attributes_for :jobs, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :additional_educations, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :achievements, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :langs, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :skill_databases, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :skill_ides, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :skill_operation_systems, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :skill_others, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :skill_program_langs, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :others, :reject_if => :all_blank, :allow_destroy => true
  accepts_nested_attributes_for :preferences, :reject_if => :all_blank, :allow_destroy => true

  validates :password, :presence => { :on => :create }
  validates :phone, :presence => true, :phone => true
  validates :email, :presence => true, :uniqueness => true, :email => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true

  state_machine :state, :initial => :new do
    state :new
    state :accepted
    after_transition :new => :accepted, :do => :send_approved_mail

    event :accept do
      transition :new => :accepted
    end
  end

  def send_approved_mail
    MemberMailer.approved(self).deliver
  end
end
