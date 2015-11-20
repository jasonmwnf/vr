class AddTimezoneToLiveShows < ActiveRecord::Migration
  def change
    add_column :live_shows, :timezone, :string
  end
end
