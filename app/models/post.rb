class Post < ActiveRecord::Base
  mount_uploader :featured_image, PostFeaturedImageUploader

  extend FriendlyId
    friendly_id :title, use: [:slugged, :finders]
  validates_presence_of :title
end