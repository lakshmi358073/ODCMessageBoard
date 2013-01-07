class CreateCategory < ActiveRecord::Base
  attr_accessible :name
  validates :name, :uniqueness => true 
  validates :name, :presence => true
  has_many :post1s
end
