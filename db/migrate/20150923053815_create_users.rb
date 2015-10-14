class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :gender
      t.string :avatar
      t.datetime :last_login
      t.date :birthday
      t.string :tel
      t.string :skype
      t.string :facebook

      t.timestamps null: false
    end
  end
end
