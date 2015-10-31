class Post < ActiveRecord::Base
  belongs_to:user
  has_many :post_attachments
  accepts_nested_attributes_for :post_attachments
  attr_accessor :tag_have, :tag_want
  
  def self.search(tag, title, type)
    where('title LIKE ? and '+"#{type}"+' = ?', "%#{title}%", tag) 
  end
end