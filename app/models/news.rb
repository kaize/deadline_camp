class News < ActiveRecord::Base
  attr_accessible :body, :name, :published_at, :uri

  validates :uri, :slug => true, :uniqueness => true
  validates :name, :presence => true

  def to_s
    name
  end

  def to_param
    uri
  end
end
