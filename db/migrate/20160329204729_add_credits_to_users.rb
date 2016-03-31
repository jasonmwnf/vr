class AddCreditsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :credits, :string
  end
end
