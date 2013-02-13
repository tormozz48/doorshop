class New < ActiveRecord::Base

  validates :date, :presence => true
  validates :title, :presence => true
  validates :body, :presence => true

  validates :title, :length => {:maximum => 50}
  validates :body, :length => {:maximum => 500}

  attr_accessible :date, :body, :title
end
