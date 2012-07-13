class News < ActiveRecord::Base
  attr_accessible :body, :name, :published_at, :uri, :state, :state_event

  include UsefullScopes

  state_machine :state, :initial => :new do
    state :new
    state :published

    event :publish do
      transition :new => :published
    end
  end

  scope :published, with_state(:published)

  validates :uri, :slug => true, :uniqueness => true
  validates :name, :presence => true
  validates :published_at, :presence => true

  class << self
    def web
      published.by_published_at
    end
  end

  def to_s
    name
  end

  def to_param
    uri
  end
end
