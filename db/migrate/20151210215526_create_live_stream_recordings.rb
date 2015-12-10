class CreateLiveStreamRecordings < ActiveRecord::Migration
  def change
    create_table :live_stream_recordings do |t|
      t.string :title
      t.string :video
      t.string :description
      t.string :image
    end
  end
end
