class CreateModels < ActiveRecord::Migration
  def change
    create_table :models do |t|
      t.string :name
      t.string :featured_image_url
      t.string :portfolio_image
      t.string :nickname
      t.date :birthdate
      t.string :astrology
      t.string :birth_place
      t.string :ethnicity
      t.string :nationality
      t.string :hair_color
      t.string :measurements
      t.string :height
      t.string :tattoos
      t.string :pierciings
      t.text   :description
      t.string :favorite_position
      t.boolean :save_as_draft
      t.timestamps
    end
  end
end
