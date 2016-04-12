class AddProductCodeToUsers < ActiveRecord::Migration
  def change
    add_column :users, :product_code, :string
  end
end
