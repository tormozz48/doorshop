class DoorProperty < ActiveRecord::Base
  belongs_to :door
  belongs_to :property

  validates :door_id, :presence => true
  validates :property_id, :presence => true
  validates :value, :presence => true

  validates :door_id, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}
  validates :property_id, :numericality => {:only_integer => true, :greater_than_or_equal_to => 0}

  validates :value, :length => {:maximum => 100}

  attr_accessible :value, :door, :property
end
