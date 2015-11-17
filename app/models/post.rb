class Post < ActiveRecord::Base
  belongs_to:user
  has_many :post_attachments, dependent: :destroy
  accepts_nested_attributes_for :post_attachments
  has_many :tag_have
  has_many :tag_want
  
  def self.search_by_tag_have(tag_array)
    # tag_post_array = TagHave.where("tag IN (?)", tag_array).uniq
    tag_post_array = TagHave.select(:post_id).distinct.where("tag IN (?)", tag_array)
    # abort tag_post_array.inspect
    post_array = []
    tag_post_array.each do |item|
      tbi = Post.find(item.post_id)
      post_array << tbi
    end
    post_array
  end
  
  def self.search_by_tag_want(tag_array)
    # tag_post_array = TagWant.where("tag IN (?)", tag_array).uniq
    tag_post_array = TagWant.select(:post_id).distinct.where("tag IN (?)", tag_array)
    # abort tag_array.inspect
    post_array = []
    tag_post_array.each do |item|
      tbi = Post.find(item.post_id)
      post_array << tbi
    end
    
    post_array
  end
  
end