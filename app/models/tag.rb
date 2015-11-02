class Tag < ActiveRecord::Base
  has_many :posts
  has_many :tag_have
  has_many :tag_want
end
