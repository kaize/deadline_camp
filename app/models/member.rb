class Member < ActiveRecord::Base
  attr_accessible :state, :email, :first_name, :icq, :jabber, :last_name, :patronymic, :phone, :skype,
    :state, :email, :first_name, :last_name, :patronymic, :phone, :skype, :jabber, :icq, :institute,
    :start_year, :finish_year, :department, :profession, :degree, :gpa, :web, :camp_time, :camp_life,
    :camp_fee, :camp_notebook, :camp_training, :hobby, :sport

  has_many :jobs
  has_many :additional_educations
  has_many :achievements
  has_many :langs
  has_many :skill_databases, :class_name => "SkillDatabase"
  has_many :skill_ides, :class_name => "SkillIde"
  has_many :skill_operation_systems, :class_name => "SkillOs"
  has_many :skill_others, :class_name => "SkillOther"
  has_many :skill_program_langs, :class_name => "SkillProgramLang"
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

  validates :email, :presence => true, :uniqueness => true, :email => true
  validates :first_name, :presence => true
  validates :last_name, :presence => true

  state_machine :state, :initial => :new do
    state :new
    state :accepted

    event :accept do
      transition :new => :accepted
    end
  end
end
