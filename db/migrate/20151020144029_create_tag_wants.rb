class CreateTagsInPost < ActiveRecord::Migration
  def change
    create_table :tags_in_post do |t|
      t.integer :tag
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
