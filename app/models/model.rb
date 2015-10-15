class Model < ActiveRecord::Base
  has_many :shots
  has_many :videos, through: :shots
end