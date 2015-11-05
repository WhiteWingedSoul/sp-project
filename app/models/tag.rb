class Tag < ActiveRecord::Base
  has_many :posts
  has_many :tag_have
  has_many :tag_want
  
  def self.get_tag_have(post)
      current_tag_have = []
      all_tag_have = post.tag_have.all
      all_tag_have.each do |a|
        tbi = find(a.tag)
        current_tag_have << tbi
      end
      return current_tag_have
  end
  
  def self.get_tag_want(post)
      current_tag_want = []
      all_tag_want = post.tag_want.all
      all_tag_want.each do |a|
        tbi = find(a.tag)
        current_tag_want << tbi
      end
      return current_tag_want
  end
end
