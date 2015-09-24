class Post < ActiveRecord::Base
  belongs_to:user
  belongs_to:having_tag, :class_name => 'Tag', :foreign_key => 'having_tag_id'
  belongs_to:want_tag, :class_name => 'Tag', :foreign_key => 'want_tag_id'
  
  def self.search(search)
    where("title LIKE ?", "%#{search}%") 
  end
  
end