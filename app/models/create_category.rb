class CreateCategory < ActiveRecord::Base
  attr_accessible :name
  has_many :post1s
end
