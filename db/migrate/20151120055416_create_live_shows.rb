class CreateLiveShows < ActiveRecord::Migration
  def change
    create_table :live_shows do |t|
      t.string   :title
      t.string   :description
      t.date     :date
      t.time     :time
      t.timestamps
    end
  end
end
