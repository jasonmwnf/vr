class Video < ActiveRecord::Base
  extend FriendlyId
    friendly_id :title, :use => :slugged
  has_many :shots
  has_many :models, through: :shots
end