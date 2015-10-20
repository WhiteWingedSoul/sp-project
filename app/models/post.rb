class Post < ActiveRecord::Base
  belongs_to:user
  mount_uploaders :imgs, PostImageUploader
  
  def self.search(tag, title, type)
    where('title LIKE ? and '+"#{type}"+' = ?', "%#{title}%", tag) 
  end
  
  def tag_have
  end
    
  def tag_want
  end
end