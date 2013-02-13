class Door < ActiveRecord::Base

  belongs_to :category
  has_many :products
  has_many :door_properties

  validates :name, :presence => true
  validates :name, :uniqueness => true
  validates :name, :length => {:maximum => 50}
  validates :description, :length => {:maximum => 500}

  attr_accessible :description, :name, :category_id, :products, :door_properties
end
