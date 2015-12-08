class Post < ActiveRecord::Base
  mount_uploader :featured_image, PostFeaturedImageUploader
  mount_uploader :video, VideoBlogPostUploader
  extend FriendlyId
    friendly_id :title, use: [:slugged, :finders]
  validates_presence_of :title
end