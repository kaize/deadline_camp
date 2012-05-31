class Member < ActiveRecord::Base
  #attr_accessible :state, :email, :first_name, :icq, :jabber, :last_name, :patronymic, :phone, :skype

  has_many :jobs
  accepts_nested_attributes_for :jobs, :reject_if => :all_blank, :allow_destroy => true

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
