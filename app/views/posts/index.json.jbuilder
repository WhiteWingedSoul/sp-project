json.array!(@posts) do |post|
  json.extract! post, :id, :user_id, :title, :description, :images, :date_modified, :post_status
  json.url post_url(post, format: :json)
end
