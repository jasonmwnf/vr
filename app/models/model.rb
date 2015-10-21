class Model < ActiveRecord::Base
  extend FriendlyId
    friendly_id :name, use: [:slugged, :finders]
  has_many :shots
  has_many :videos, through: :shots
end