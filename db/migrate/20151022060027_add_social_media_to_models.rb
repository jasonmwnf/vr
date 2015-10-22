class AddSocialMediaToModels < ActiveRecord::Migration
  def change
    add_column :models, :twitter, :string
    add_column :models, :facebook, :string
    add_column :models, :instagram, :string
    add_column :models, :website, :string
  end
end
