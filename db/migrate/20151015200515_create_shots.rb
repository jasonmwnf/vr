class CreateShots < ActiveRecord::Migration
  def change
    create_table :shots do |t|
      t.integer :video_id
      t.integer :model_id
    end
  end
end
