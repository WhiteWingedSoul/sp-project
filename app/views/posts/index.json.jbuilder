json.array!(@posts) do |post|
  json.extract! post, :id, :user_id, :title, :description, :images, :date_modified, :post_status, :having_tag_id
  json.url post_url(post, format: :json)
end
