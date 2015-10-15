class AddSlugsToEverything < ActiveRecord::Migration
  def change
    add_column :models, :slug, :string
    add_column :posts, :slug, :string
    add_column :videos, :slug, :string
    add_column :shots, :slug, :string
  end
end