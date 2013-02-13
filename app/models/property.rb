class Property < ActiveRecord::Base
  has_many :door_properties

  attr_accessible :code, :name

  validates :code, :presence => true
  validates :name, :presence => true

  validates :code, :uniqueness => true
  validates :name, :uniqueness => true

  validates :code, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
end
