class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :images
      t.datetime :date_modified
      t.boolean :post_status
      t.integer :having_tag_id

      t.timestamps null: false
    end
  end
end
