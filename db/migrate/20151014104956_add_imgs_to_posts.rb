class AddImgsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :imgs, :json
  end
end
