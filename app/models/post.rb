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
  
  def collection
    {
      "lorem" => 1,
      "issue" => 2,
      "dolot" => 3,
      "sir" => 4,
      "amet" => 5
    }
  end
  
  def col_id
    hash = collection
    hash.values
  end
  
  def col_name
    hash = collection
    hash.keys
  end
end