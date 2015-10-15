class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
    	t.string   "title"
    	t.string   "featured_image"
    	t.text     "description"
    	t.datetime "created_at",
    	t.datetime "updated_at",
    	t.string   "video_url"
    	t.string   "teaser_video_url"
    	t.date     "post_date"
    	t.string   "slug"
    	t.string   "thumbnail_1"
    	t.string   "thumbnail_2"
    	t.string   "thumbnail_3"
    	t.string   "thumbnail_4"
    	t.boolean  "save_as_draft"
    end
  end
end
