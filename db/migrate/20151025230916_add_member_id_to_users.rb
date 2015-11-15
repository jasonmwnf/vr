class AddMemberIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :member_id, :string
    add_column :users, :amount, :string
  end
end
