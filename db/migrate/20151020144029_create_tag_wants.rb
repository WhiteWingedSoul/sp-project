class CreateTagWants < ActiveRecord::Migration
  def change
    create_table :tag_wants do |t|
      t.integer :tag
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
