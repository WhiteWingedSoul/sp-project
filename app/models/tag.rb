class Tag < ActiveRecord::Base
  has_many :posts
  has_many :tag_have
  has_many :tag_want
  
  def self.get_tag(post, tag_type)
      current_tag_have = []
      all_tag_have = post.send("#{tag_type}").all
      all_tag_have.each do |a|
        tbi = find(a.tag)
        current_tag_have << tbi
      end
      return current_tag_have
  end
end
