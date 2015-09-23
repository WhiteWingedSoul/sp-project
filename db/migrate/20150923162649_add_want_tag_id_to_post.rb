class AddWantTagIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :want_tag_id, :integer
  end
end
