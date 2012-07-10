class PhotoAlbum < ActiveRecord::Base
  attr_accessible :name, :state

  has_many :photos, :dependent => :destroy

  state_machine :state, :initial => :new do
    state :new
    state :published

    event :publish do
      transition :new => :published
    end
  end

  scope :published, with_state(:published)
end
