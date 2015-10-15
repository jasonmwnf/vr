class Shot < ActiveRecord::Base
  belongs_to :video
  belongs_to :model
end