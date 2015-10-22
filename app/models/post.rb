class Post < ActiveRecord::Base
  mount_uploader :featured_image, FeaturedImageUploader

  extend FriendlyId
    friendly_id :title, use: [:slugged, :finders]
end