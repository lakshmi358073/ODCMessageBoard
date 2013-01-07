class Post1 < ActiveRecord::Base
  attr_accessible :content, :title, :category
  validates :title, :uniqueness => { :message => "already exists, Try new name!" }
  validates :content, :title, :presence => true
  belongs_to :categories
 end
