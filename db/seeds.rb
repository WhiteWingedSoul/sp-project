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
<<<<<<< Updated upstream

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
=======
Tag.create("title"=>"Tủ lạnh")

Tag.create("title"=>"Bồn chứa nước")

5.times do |n|
  firstname = Faker::Name.first_name
  lastname = Faker::Name.last_name
  email = "example-#{n+1}@example.org"
  gender = ["male", "female"].sample
  password = "reverse"
  User.create!(firstname: firstname,
  lastname: lastname,
  email: email,
  password: password,
  gender: gender)
end

# 5.times do |m|
#   5.times do |n|
#     id = n + 5 * m + 1
#     user_id = m + 1
#     title = Faker::Name.name
#     description = Faker::Lorem.paragraph($nbSentences = 3)
#     Post.create!(id: id,
#     user_id: user_id,
#     title: title,
#     description: description,
#     post_status: true)
    
#     # maxtag = rand(4)
#     tag = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"].sample
#     TagHave.create!(tag: tag,
#     post_id: id)
    
#     # maxtag = rand(4)
#     tag = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"].sample
#     TagWant.create!(tag: tag,
#     post_id: id)
#   end
# end

Post.create!(id: "1",
user_id: "1",
title: "Bồn nước inox Nam Mỹ",
description: "Bồn nước 1500 lít, 2000 lít",
post_status: true)
TagHave.create!(tag: "16",
post_id: "1")
TagWant.create!(tag: "2",
post_id: "1")

Post.create!(id: "2",
user_id: "1",
title: "Tủ mát Pepsi 600 lít",
description: "Tủ mát Pepsi 600 lít",
post_status: true)
TagHave.create!(tag: "15",
post_id: "2")
TagWant.create!(tag: "7",
post_id: "2")
>>>>>>> Stashed changes
