class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :image_url
      t.integer :video_id
      t.timestamps
    end
  end
end
