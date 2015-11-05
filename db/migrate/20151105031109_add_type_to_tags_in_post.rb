class AddTypeToTagsInPost < ActiveRecord::Migration
  def change
    add_column :tags_in_posts, :type, :string
  end
end
