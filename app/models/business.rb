class Business < ActiveRecord::Base
  belongs_to :type

  validates :name, :presence => true
  validates :telenum, :presence => true
  validates :street, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :zip, :presence => true
  validates :email, :presence => true
  validates :website, :presence => true

end
