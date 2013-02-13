class Category < ActiveRecord::Base
  has_many :doors

  attr_accessible :description, :name, :doors

  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :name, :length => {:maximum => 50}

  validates :description, :length => {:maximum => 500}
end
