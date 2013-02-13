class ProductStatus < ActiveRecord::Base
  has_many :products

  validates :code, :presence => true
  validates :name, :presence => true

  validates :code, :uniqueness => true
  validates :name, :uniqueness => true

  validates :code, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}

  validates :name, :length => {:maximum => 50}

  attr_accessible :code, :name, :products
end
