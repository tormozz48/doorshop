class Product < ActiveRecord::Base
  belongs_to :door
  belongs_to :frame_type
  belongs_to :product_status

  validates :price, :presence => true
  validates :image, :presence => true
  validates :door_id, :presence => true
  validates :product_status_id, :presence => true
  validates :frame_type_id, :presence => true

  validates :door_id, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :product_status_id, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :frame_type_id, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}

  validates :price, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :image, :length => {:maximum => 255}

  attr_accessible :price, :image, :door, :product_status, :frame_type
end
