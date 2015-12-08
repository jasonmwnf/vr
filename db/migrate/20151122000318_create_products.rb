class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text  :description
      t.string :price
      t.string :image
    end
  end
end
