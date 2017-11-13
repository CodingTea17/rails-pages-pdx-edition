class Type < ActiveRecord::Base
  has_many :businesses
  validates :category, :presence => true
end
