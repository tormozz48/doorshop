class Contact < ActiveRecord::Base
  attr_accessible :address, :email, :name, :phone1, :phone2, :skype

  validates :name, :presence => true
  validates :email, :presence => true
  validates :phone1, :presence => true
  validates :address, :presence => true

  validates :name, :length => {:maximum => 50}
  validates :email, :length => {:maximum => 100}
  validates :phone1, :length => {:maximum => 15}
  validates :phone2, :length => {:maximum => 15}
  validates :skype, :length => {:maximum => 50}
  validates :address, :length => {:maximum => 500}
end
