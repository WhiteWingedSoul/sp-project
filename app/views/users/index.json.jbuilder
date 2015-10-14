json.array!(@users) do |user|
  json.extract! user, :id, :usernam, :email, :firstname, :lastname, :gender, :avatar, :last_login, :birthday, :tel, :skype, :facebook
  json.url user_url(user, format: :json)
end
