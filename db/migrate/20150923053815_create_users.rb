class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :email
      t.string :firstname
      t.string :lastname
      t.string :gender
      t.string :avatar
      t.datetime :last_login
      t.date :birthday
      t.string :tel
      t.string :skype
      t.string :facebook
      t.date :joindate

      t.timestamps null: false
    end
  end
end
