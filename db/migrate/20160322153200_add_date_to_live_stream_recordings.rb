class AddDateToLiveStreamRecordings < ActiveRecord::Migration
  def change
    add_column :live_stream_recordings, :date, :date
  end
end
