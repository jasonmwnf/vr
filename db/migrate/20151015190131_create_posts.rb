class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :featured_image
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
