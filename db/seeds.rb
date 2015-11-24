# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tag.create("title"=>"Đồ gia dụng")
Tag.create("title"=>"Văn phòng phẩm")
Tag.create("title"=>"Bàn")
Tag.create("title"=>"Ghế")
Tag.create("title"=>"Trang sức")
Tag.create("title"=>"Tủ")
Tag.create("title"=>"Quần áo")
Tag.create("title"=>"Điện thoại")
Tag.create("title"=>"Máy giặt")
Tag.create("title"=>"Dụng cụ bếp")
Tag.create("title"=>"Laptop")
Tag.create("title"=>"Linh kiện điện tử")
Tag.create("title"=>"Đĩa CD")
Tag.create("title"=>"Xe máy")

User.create!(firstname:  "Hoang",
             lastname: "Viet",
             email: "cooro1994@yahoo.com",
             gender: "1",
             birthday: "1994-06-22",
             tel: "0902239958",
             skype: "cooro1994",
             facebook: "https://www.facebook.com/White.Winged.Soul",
             password:              "738798",
             password_confirmation: "738798",
             admin:     true)