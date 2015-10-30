class Post < ActiveRecord::Base
  belongs_to:user
  mount_uploaders :imgs, PostImageUploader
  attr_accessor :tag_have, :tag_want
  
  def self.search(tag, title, type)
    where('title LIKE ? and '+"#{type}"+' = ?', "%#{title}%", tag) 
  end
end