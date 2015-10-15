class Video < ActiveRecord::Base
  has_many :shots
  has_many :models, through: :shots
end