class LiveStreamRecording < ActiveRecord::Base
  mount_uploader :image, RecordingTeaserImageUploader
  mount_uploader :video, RecordingVideoUploader

end