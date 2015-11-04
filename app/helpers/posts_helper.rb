module PostsHelper
  def get_tag_have(post)
      @current_tag_have = []
      all_tag_have = post.tag_have.all
      all_tag_have.each do |a|
        tbi = Tag.find(a.tag)
        @current_tag_have << tbi
      end
  end
  def get_tag_want(post)
      @current_tag_want = []
      all_tag_want = post.tag_want.all
      all_tag_want.each do |a|
        tbi = Tag.find(a.tag)
        @current_tag_want << tbi
      end
  end
end
