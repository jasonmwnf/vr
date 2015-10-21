class Video < ActiveRecord::Base
  extend FriendlyId
    friendly_id :title, use: [:slugged, :finders]
  has_many :shots
  has_many :models, through: :shots
  has_many :pictures
end