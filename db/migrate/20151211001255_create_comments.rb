class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :comment
      t.string :user_email
      t.timestamps
      t.integer :post_id
    end
  end
end
