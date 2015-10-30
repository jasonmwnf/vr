class Picture < ActiveRecord::Base
  mount_uploader :image_url, PictureUploader
  belongs_to :video

end