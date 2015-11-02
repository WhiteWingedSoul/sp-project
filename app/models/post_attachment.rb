class PostAttachment < ActiveRecord::Base
  belongs_to :post
  mount_uploader :avatar, PostImageUploader
end
