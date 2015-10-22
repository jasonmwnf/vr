class Model < ActiveRecord::Base
  mount_uploader :featured_image_url, FeaturedImageUrlUploader
  mount_uploader :portfolio_image, PortfolioImageUploader

  extend FriendlyId
    friendly_id :name, use: [:slugged, :finders]
  has_many :shots
  has_many :videos, through: :shots
end