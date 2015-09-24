class Post < ActiveRecord::Base
  belongs_to:user
  belongs_to:having_tag, :class_name => 'Tag', :foreign_key => 'having_tag_id'
  belongs_to:want_tag, :class_name => 'Tag', :foreign_key => 'want_tag_id'
  
  def self.search(tag, title, type)
    where('title LIKE ? and '+"#{type}"+' = ?', "%#{title}%", tag) 
  end
  
end