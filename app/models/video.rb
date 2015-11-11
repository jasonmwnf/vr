class Video < ActiveRecord::Base
  mount_uploader :thumbnail_1, ThumbnailUploaderOne
  mount_uploader :thumbnail_2, ThumbnailUploaderTwo
  mount_uploader :thumbnail_3, ThumbnailUploaderThree
  mount_uploader :thumbnail_4, ThumbnailUploaderFour
  mount_uploader :video_url, VideoUrlUploader
  mount_uploader :featured_image, VideoFeaturedImageUploader
  mount_uploader :teaser_video_url, TeaserVideoUrlUploader
  extend FriendlyId
    friendly_id :title, use: [:slugged, :finders]
  has_many :shots
  has_many :models, through: :shots
  has_many :pictures
  validates_presence_of :title
end