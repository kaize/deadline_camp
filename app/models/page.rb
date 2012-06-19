class Page < ActiveRecord::Base
  attr_accessible :body, :name, :uri

  validates :uri, :slug => true, :uniqueness => true
  validates :name, :presence => true

  def to_s
    name
  end

  def to_param
    uri
  end
end
