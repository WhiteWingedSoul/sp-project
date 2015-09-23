json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :email, :firstname, :lastname, :gender, :avatar, :last_login, :birthday, :tel, :skype, :facebook, :joindate
  json.url user_url(user, format: :json)
end
