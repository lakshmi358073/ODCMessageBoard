class CreateCategory < ActiveRecord::Base
  attr_accessible :name
  validates :name, :uniqueness => { :message => "already exists, Try new name!" }
  validates :name, :presence => { :message => "field cannot be empty" }
  has_many :post1s
end
