class CreateUpcomingVideos < ActiveRecord::Migration
  def change
    create_table :upcoming_videos do |t|
      t.string :image
      t.timestamps
    end
  end
end
