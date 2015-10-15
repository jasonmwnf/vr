class Shot < ActiveRecord::Base
  extend FriendlyId
    friendly_id :name, use: :slugged
  belongs_to :video
  belongs_to :model
end